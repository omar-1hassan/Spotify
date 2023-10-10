//
//  LibraryPlaylistsViewController.swift
//  Spotify
//
//  Created by mac on 08/10/2023.
//

import UIKit

class LibraryPlaylistsViewController: UIViewController {
    
    public var selectionHandler: ((Playlist) -> Void)?
    
    var playlists = [Playlist]()
    
    private let noPlaylistsView = ActionLabelView()
    
    private let tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(SearchResultsSubtitleTableViewCell.self, forCellReuseIdentifier: SearchResultsSubtitleTableViewCell.indentifier)
        tableView.isHidden = true
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        setUpNoPlaylistsView()
        
        fetchData()
        
        if selectionHandler != nil {
            navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(didTapClose))
        }
    }
    
    @objc func didTapClose(){
        dismiss(animated: true)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        noPlaylistsView.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        noPlaylistsView.center = view.center
        tableView.frame = view.bounds
    }
    
    private func setUpNoPlaylistsView() {
        view.addSubview(noPlaylistsView)
        noPlaylistsView.delegate = self
        noPlaylistsView.configure(with: ActionLabelViewViewModel(text: "You don't have any playlists yet.", actionTitle: "Create"))
    }
    
    private func fetchData(){
        APICaller.shared.getCurrentUserPlaylists { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let playlists):
                    self?.playlists = playlists
                    self?.updateUI()
                    
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    private func updateUI() {
        if playlists.isEmpty {
            //Show label
            noPlaylistsView.isHidden = false
            tableView.isHidden = true
        }
        else {
            //Show table of results
            tableView.reloadData()
            noPlaylistsView.isHidden = true
            tableView.isHidden = false
            
        }
    }
    public func showCreatePlaylistAlert(){
        let alert = UIAlertController(title: "New Playlists", message: "Enter playlist name", preferredStyle: .alert)
        alert.addTextField { textField in
            textField.placeholder = "Playlist...."
        }
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Create", style: .default, handler: { _ in
            guard let field = alert.textFields?.first,
                  let text = field.text,
                  !text.trimmingCharacters(in: .whitespaces).isEmpty else {
                return
            }
            APICaller.shared.createPlaylist(with: text) { [weak self] success in
                if success {
                    HapticsMananger.shared.vibrate(for: .success)
                    //Refresh list of playlists
                    self?.fetchData()
                }
                else {
                    HapticsMananger.shared.vibrate(for: .error)
                    print("Failed to create playlist")
                }
            }
        }))
        present(alert, animated: true)
    }
}

extension LibraryPlaylistsViewController: ActionLabelViewDelegate{
    func actionLabelViewDidTapButton(_ actionView: ActionLabelView) {
        //Show creation UI
        showCreatePlaylistAlert()
    }
}

extension LibraryPlaylistsViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playlists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SearchResultsSubtitleTableViewCell.indentifier, for: indexPath) as? SearchResultsSubtitleTableViewCell else {
            return UITableViewCell()
        }
        let playlist = playlists[indexPath.row]
        cell.configure(with: SearchResultsSubtitleTableViewCellViewModel(title: playlist.name,
                                                                         subtitle: playlist.owner.display_name,
                                                                         imageURL: URL(string: playlist.images.first?.url ?? "")))
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        HapticsMananger.shared.vibrateForSelection()
        
        let playlist = playlists[indexPath.row]
        guard selectionHandler == nil else {
            selectionHandler?(playlist)
            dismiss(animated: true)
            return
        }
        
        let vc = PlayListViewController(playlist: playlist)
        vc.navigationItem.largeTitleDisplayMode = .never
        vc.isOwner = true
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}

//
//  BookFormTableVC.swift
//  FavoriteBooks
//
//  Created by Sharon Chetrit on 05/12/2017.
//

import UIKit

class BookFormTableVC: UITableViewController {
    
    var book: Book?
    
    @IBOutlet weak var titleTxtField: UITextField!
    @IBOutlet weak var authorTxtField: UITextField!
    @IBOutlet weak var genreTxtField: UITextField!
    @IBOutlet weak var lengthTxtField: UITextField!
    
    struct PropertyKeys {
        static let unwind = "UnwindToBookTable"
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        updateView()
    }

    func updateView(){
        guard let book = book else {return}
        
        titleTxtField.text = book.title
        authorTxtField.text = book.author
        genreTxtField.text = book.genre
        lengthTxtField.text = book.length
    }
    
    
    @IBOutlet weak var saveButton: UIButton!
}

//
//  ViewController.swift
//  HackwichFour
//
//  Created by Marion Ano on 2/28/19.
//  Copyright © 2019 Marion Ano. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
//declare our array

  
    var myFriends = ["Ryan", "Nicole", "Sara", "Tyler"]


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return myFriends.count
        //return 4

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Code Block
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        let text = myFriends[indexPath.row]
        cell.textLabel?.text=text
        return cell
    }




    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


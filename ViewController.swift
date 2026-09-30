import UIKit

class ViewController: UIViewController {
    
 
    
    @IBOutlet weak var buttonOk: UIButton!
    
    @IBAction func ButtonOkPressed(_ sender: Any) {
        openSecondScreen()
        let secondVC = SecondViewController()
          secondVC.title = "SecondScreen"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let logoImageView = UIImageView()
        logoImageView.image = UIImage(named: "logo")
        logoImageView.contentMode = .scaleAspectFit
        
        let previewImageView = UIImageView()
        previewImageView.image = UIImage(named: "preview")
        previewImageView.contentMode = .scaleAspectFit
        
        buttonOk.setImage(UIImage(named: "button_1"), for: .normal)
        buttonOk.contentMode = .scaleAspectFit
        buttonOk.imageView?.contentMode = .scaleAspectFit
        
        let stackView = UIStackView(arrangedSubviews: [logoImageView, previewImageView, buttonOk])
        
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.spacing = 10
               
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),

            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),

               stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),

               stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            
            logoImageView.widthAnchor.constraint(equalToConstant: 240),
                logoImageView.heightAnchor.constraint(equalToConstant: 150),

                buttonOk.widthAnchor.constraint(equalToConstant: 100),
                buttonOk.heightAnchor.constraint(equalToConstant: 100)
            
           ])
    }
    
    @objc private func openSecondScreen() {
        let secondVC = SecondViewController()
        secondVC.title = "SecondScreen"
   
    
    navigationController?.pushViewController(secondVC, animated: true)
    }


}




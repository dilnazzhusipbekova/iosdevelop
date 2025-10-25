import UIKit

struct Item {
    let name: String
    let description: String
    let imageName: String
}

class ViewController: UIViewController {

    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    let items: [Item] = [
        Item(name: "Телевизор", description: "Современный экран с высоким разрешением.", imageName: "photo1"),
        Item(name: "Гитара", description: "Музыкальный инструмент с шестью струнами.", imageName: "photo2"),
        Item(name: "Кроссовок", description: "Удобная спортивная обувь для прогулок и тренировок.", imageName: "photo3"),
        Item(name: "Сумка", description: "Стильный аксессуар для хранения вещей.", imageName: "photo4"),
        Item(name: "Очки", description: "Модный и полезный аксессуар для зрения и стиля.", imageName: "photo5"),
        Item(name: "Помада", description: "Косметическое средство для губ.", imageName: "photo6"),
        Item(name: "Гора", description: "Величественный природный объект с красивым видом.", imageName: "photo7"),
        Item(name: "Мяч", description: "Игровой предмет для спорта и развлечений.", imageName: "photo8"),
        Item(name: "Обезьянка", description: "Забавное животное, любопытное и энергичное.", imageName: "photo9"),
        Item(name: "Дом", description: "Место уюта, тепла и семьи.", imageName: "photo10")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showRandomItem()
    }
    
    @IBAction func randomButtonPressed(_ sender: UIButton) {
        showRandomItem()
    }
    
    func showRandomItem() {
        let randomItem = items.randomElement()!
        itemImageView.image = UIImage(named: randomItem.imageName)
        nameLabel.text = randomItem.name
        descriptionLabel.text = randomItem.description
    }
}


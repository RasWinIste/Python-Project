from datetime import date
from pythonProject.models.user import User
from pythonProject.utils import greet

class App:
    def __init__(self):
        self.user = User(
            name="Alice",
            birthday=date(1990, 5, 15),
            address="123 Main St, Springfield"
        )

    def run(self):
        greet(self.user.name)
        print(f"User Info: {self.user}")
        print(f"Age: {self.user.age()} years old")

        if self.user.is_birthday_today():
            print("🎉 Happy Birthday, Alice!")
        else:
            print("No birthday today.")

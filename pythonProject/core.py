from pythonProject.models.user import User
from pythonProject.utils import greet

class App:
    def __init__(self):
        self.user = User("Alice")

    def run(self):
        greet(self.user.name)
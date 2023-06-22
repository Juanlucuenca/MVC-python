class ContactForUpdate:
    id = 0
    name = ""
    surname = ""
    email = ""
    username = ""
    colegioSecundario = ""
    state = 1

    def __init__(self, id, name, surname, email, colegioSecundario, username) -> None:
        self.id = id
        self.name = name
        self.surname = surname
        self.email = email
        self.username = username
        self.colegioSecundario = colegioSecundario
        self.state = 1

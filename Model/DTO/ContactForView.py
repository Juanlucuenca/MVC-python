class ContactForView:
    id=0
    name = ""
    surname = ""
    email = ""
    username = ""
    colegioSecundario = "none"

    def __init__(self, contact) -> None:
        self.name = contact.name
        self.surname = contact.surname
        self.email = contact.email
        self.username = contact.username
        self.colegioSecundario = contact.colegioSecundario
        self.id = contact.id

    def __str__(self) -> str:
        if self.colegioSecundario == "none":
            return f"Nombre: {self.name} - Apellido: {self.surname} - Email: {self.email} - Secundario: No tiene - Id: {self.id}"
        else:
            return f"Nombre: {self.name} - Apellido: {self.surname} - Email: {self.email} - Secundario: {self.colegioSecundario} - Id: {self.id}"

    

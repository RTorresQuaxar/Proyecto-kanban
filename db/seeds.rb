# Manejo del tablero kanban

Card.destroy_all
KanbanColumn.destroy_all
Kanban.destroy_all

my_kanban = Kanban.create(
  name: "Proyecto de Prácticas",
  description: "Proyecto de Kanban Board utilizando RoR.",
);

backlog = KanbanColumn.create(
  name: "Pendiente",
  kanban: my_kanban
)
Card.create(content: "Hacer Back-end", position: 0, kanban_column: backlog)
Card.create(content: "Hacer registro", position: 1, kanban_column: backlog)
Card.create(content: "Hacer inicio de sesión", position: 2, kanban_column: backlog)

todo = KanbanColumn.create(
  name: "Por Hacer",
  kanban: my_kanban
)
Card.create(content: "Colocar navbar", position: 0, kanban_column: todo)

completed = KanbanColumn.create(
  name: "Terminado",
  kanban: my_kanban
)
Card.create(content: "Proyecto CV", position: 0, kanban_column: completed)
Card.create(content: "Proyecto CRUD", position: 1, kanban_column: completed)






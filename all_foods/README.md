## all_foods

### SSH
`eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_rsa_linux_msi`

### Refactor issue.
Можно в папке pages/home/* все привести к одному методу, потому что код один и тотже,
отлечаются только title.

### Categories
#### Status
Ready.
#### refactoring.
Надо попробовать вынести ListView.saparated в отдельный блок,  
то есть создать список заранее.

### Recommendations
#### Status
Ready.

### Popular
#### Status
Build.
#### Current.
нужно внутри основых сolumn еще сделать column,  
но внтури него уже Row из трех боксов.
* padding
сделать отступ сверху сразу, что бы от заголовка шел отступ.

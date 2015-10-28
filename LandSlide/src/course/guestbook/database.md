#Database

---

#Database Configuration

##global.php

	!php
	return array(
		 'db' => array(
			 'driver' => 'pdo',
			 'dsn' => 'mysql:dbname=guestbook;host=localhost',
			 'driver_options' => array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'UTF8'",
			 PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION),
		 ),
	 );

---
	 
#Database Configuration

##global.php

	!php
	return array(
		 'db' => array(
			 'driver' => 'pdo',
			 'dsn' => 'mysql:dbname=guestbook;host=localhost',
			 'driver_options' => array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'UTF8'",
			 PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION),
		 ),
	 );
	 
##local.php

	!php
	return array(
		 'db' => array(
			 'username' => 'root',
			 'password' => 'XXX',
		 ),
	 );
	 
---

#Model

---

#Create Entity

## Attributes statement 

In our example "guestbook" we have five cloumns in table entry

So in attributes statement we find protected variable relative to those in the table

	!php
	protected $id;
	protected $name;
	protected $email;
	protected $website;
	protected $message;

---
	
#Create Entity

## Methods statement 

In the next time we find the setter and getter for these protected attributes

Example setter function

	!php
	public function setId($id)
	 {
		 $this->id = $id;
		 return $this;
	 }

Example getter function

	 !php
	 public function getId()
	 {
	 	return $this->id;
	 }

---

#Interaction with database

##TableGateway

In ZF2 we need to construct a class extends from TableGateway like this example in Guestbook

	!php
	use Zend\Db\TableGateway\TableGateway;
	class EntryTable extends TableGateway
	{
		 public function findAll()
		 {
			 $resultSet = $this->select();
			 return $resultSet;
		 }
	}
 
 the function select() is not declared in our class so absolutely it's from parents class
 
---

#Interaction with database

##TableGateway

Let’s look at the TableGateway class in more details

The class TableGatway also extends from AbstractTableGateway

	!php
	class TableGateway extends AbstractTableGateway

---

#Interaction with database

##TableGateway

Let’s look at the TableGateway class in more details

The class TableGatway also extends from AbstractTableGateway

	!php
	class TableGateway extends AbstractTableGateway
	
This class has a construct function let's look in roughly speaking these params

	!php
	public function __construct($table, 
								AdapterInterface $adapter,
								$features = null,
							    ResultSetInterface $resultSetPrototype = null,
							    Sql $sql = null)
    
---

#Interaction with database

##TableGateway

Let’s look at the TableGateway class in more details

The class TableGatway also extends from AbstractTableGateway

	!php
	class TableGateway extends AbstractTableGateway
	
This class has a construct function let's look in roughly speaking these params

	!php
	public function __construct($table, 
								AdapterInterface $adapter,
								$features = null,
							    ResultSetInterface $resultSetPrototype = null,
							    Sql $sql = null)
    
Looking select() function also it's not here so perforce we need to discover yet AbstractTableGateway

---

#Interaction with database

##AbstractTableGateway

In this class we find many function declared like select(), insert() ..

In our example : select()

	!php
	public function select($where = null)
    {
        if (!$this->isInitialized) {
            $this->initialize();
        }
        $select = $this->sql->select();

        if ($where instanceof \Closure) {
            $where($select);
        } elseif ($where !== null) {
            $select->where($where);
        }
        return $this->selectWith($select);
    }
    
    

#Spring Boot
### @Autowired 
* Allows you to skip configurations elsewhere of what to inject and just does it for you. Assuming your package is com.mycompany.movies you have to put this tag in your XML (application context file):
    * <context:component-scan base-package="com.mycompany.movies" />

* Spares you the need to do the wiring by yourself in the XML file (or any other way) and just finds for you what needs to be injected where, and does that for you.


# Spring Security
### @EnableWebSecurity 
* Is a marker annotation that allows Spring to find (it's a @Configuration and, therefore, @Component) and automatically apply the class to the global WebSecurity.

* will provide configuration via HttpSecurity providing the configuration you could find with <http></http> tag in xml configuration, it's allow you to configure your access based on urls patterns, the authentication endpoints, handlers etc...

### EnableGlobalMethodSecurity 
* Is an annotation that provides AOP security on methods, some of annotation it will enable are PreAuthorize PostAuthorize also it has support for JSR-250.

# Spring JPA
### @Entity 
* Specifies that the class is an entity and is mapped to a database table. 

### @Table
* Allows you to specify the details of the table that will be used to persist the entity in the database.

* Provides four attributes, allowing you to override the name of the table, its catalogue, and its schema, and enforce unique constraints on columns in the table. 

# javax.persistence
### @Id annotation 
* is inherited from javax.persistence.Id， indicating the member field below is the primary key of current entity/table. 

### @GeneratedValue 
* This is to configure the way of increment of the specified column(field). For example when using Mysql, you may specify auto_increment in the definition of table to make it self-incremental.

* Indicates that the persistence provider must assign primary key for the entity using a database identity column.

### @NaturalId
* Hibernate will maintain a mapping of the natural ids to primary keys.

* A natural identifier is something that is used in the real world as an identifier. An example is a social security number, or a passport number.

###  @JoinTable
* Used in the mapping of associations. It is specified on the owning side of an association.
 
* A join table is typically used in the mapping of many-to-many and unidirectional one-to-many associations. It may also be used to map bidirectional many-to-one/one-to-many associations, unidirectional many-to-one relationships, and one-to-one associations (both bidirectional and unidirectional).
  
* When a join table is used in mapping a relationship with an embeddable class on the owning side of the relationship, the containing entity rather than the embeddable class is considered the owner of the relationship.
  
* If the JoinTable annotation is missing, the default values of the annotation elements apply. The name of the join table is assumed to be the table names of the associated primary tables concatenated together (owning side first) using an underscore.

### @JoinColumn
* The annotation indicates that this entity is the owner of the relationship (that is: the corresponding table has a column with a foreign key to the referenced table), whereas the attribute mappedBy indicates that the entity in this side is the inverse of the relationship, and the owner resides in the "other" entity. 

* This also means that you can access the other table from the class which you've annotated with "mappedBy" (fully bidirectional relationship).

### @UniqueConstraint
* Specifies that a unique constraint is to be included in the generated DDL for a primary or secondary table.

* Search Results
  Featured snippet from the web
  A unique constraint is a type of column restriction within a table, which dictates that all values in that column must be unique though may be null. 

### @ManyToMany
* The ManyToMany annotation may be used within an embeddable class contained within an entity class to specify a relationship to a collection of entities. If the relationship is bidirectional and the entity containing the embeddable class is the owner of the relationship, 
the non-owning side must use the mappedBy element of the ManyToMany annotation to specify the relationship field or property of the embeddable class. 
The dot (".") notation syntax must be used in the mappedBy element to indicate the relationship attribute within the embedded attribute. 
The value of each identifier used with the dot notation is the name of the respective embedded field or property.


# javax.validation.constraints.
### @NotBlank
* The annotated element must not be null and must contain at least one non-whitespace character. Accepts CharSequence.

### @Size
* The annotated element size must be between the specified boundaries (included).

### @Email
* The string has to be a well-formed email address. Exact semantics of what makes up a valid email address are left to Bean Validation providers. Accepts CharSequence.

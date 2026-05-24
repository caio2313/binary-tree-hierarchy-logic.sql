-- Challenge: Binary Tree Nodes
-- Goal: Classify nodes in a Binary Tree structure as 'Root', 'Leaf', or 'Inner'.
-- Database: MySQL 8.0

select N , 
case 
when P is NULL then "Root"
when N NOT IN (SELECT P FROM BST WHERE P IS NOT NULL) then "Leaf"
else "Inner"
end 
from BST
Order by N;

/* ENGINEERING NOTE: 
   This query solves a structural hierarchy problem using self-reference logic. 
   By implementing a subquery within the CASE expression, we dynamically evaluate 
   if a node acts as a parent to any other record. Mastering hierarchical data 
   is vital for processing relational structures without recursive overhead.
*/

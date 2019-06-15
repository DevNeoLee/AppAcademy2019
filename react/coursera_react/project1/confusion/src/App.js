import React from 'react';
import { Navbar, NavbarBrand } from 'reactstrap';
import './App.css';
import Menu from './components/MenuComponent';

function App() {
  return ( 
    <div> 
      <Navbar dark color="primary">
        <NavbarBrand href="/'">Restaurant Number Three</NavbarBrand>
        <NavbarBrand href="/'">Restaurant Number 2</NavbarBrand>
      </Navbar>  
      <Menu/>
    </div>
  );
}

export default App;

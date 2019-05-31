import React, { Component } from 'react';

class Todos extends Component {
    render() {
       
        return ( this.props.abc.map((hoho) => (
            <div>
            <h3>
                id: {hoho.id}<br/> 
                title: {hoho.title} <br/> 
                completed:{hoho.completed}<br/>
            </h3>
            <h1>올라 올라 {this.props.da[0].id} </h1>
            </div>
            
        )));
    }
}

export default Todos;

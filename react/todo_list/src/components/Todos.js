import React, { Component } from 'react';

class Todos extends Component {
    render() {
        return (
            <h1>올라 올라 {this.props.da[1].id} </h1>
        );
        return this.props.abc.map((hoho) => (
            <h1>올라...1
            <h3>
                id: {hoho.id}<br/> 
                title: {hoho.title} <br/> 
                completed:{hoho.completed}<br/>
            </h3>
            </h1>
        ));
    }
}

export default Todos;

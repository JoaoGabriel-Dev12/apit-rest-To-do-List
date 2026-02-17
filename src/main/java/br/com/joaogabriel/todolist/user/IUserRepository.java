package br.com.joaogabriel.todolist.user;


import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

// Interface é um modelo/contrato dentro da nossa aplicação
// Na interface criamos os métodos mas sem implementarmos
public interface IUserRepository extends JpaRepository<UserModel, UUID> {

    UserModel findByUsername(String userName);
}

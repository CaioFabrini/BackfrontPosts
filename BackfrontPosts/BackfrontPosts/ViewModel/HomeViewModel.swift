//
//  HomeViewModel.swift
//  BackfrontPosts
//
//  Created by Caio Fabrini on 05/11/23.
//

import SwiftUI

@Observable
class HomeViewModel {
     
    var isMuted: Bool = true
    
    var posts: [PostDataModel] = [
        PostDataModel(id: UUID(), profileImage: "logo-BF", userName: "BackFront", postImage: nil, isLiked: false, isSaved: true, caption: "Você acredita?", isVideo: true, videoUrl: "bfVideo"),
        
        PostDataModel(id: UUID(), profileImage: "user3", userName: "Roberto", postImage: "dogs", isLiked: false, isSaved: false, caption: "Em meio a patas e sorrisos, cada latido é uma história de alegria contada sem palavras. 🐾❤️", isVideo: false, videoUrl:nil),
        
        PostDataModel(id: UUID(), profileImage: "user2", userName: "Mario", postImage: "tesla", isLiked: false, isSaved: false, caption: "Mesmo chegando depois de concorrentes como a Rivian R1T e a Ford F-150 Lightning, os problemas da Cybertruck não se limitam aos anos de atraso. Mais de 2 milhões de pessoas fizeram reservas de US$ 100 e estão pedindo pedindo seu dinheiro de volta para Tesla", isVideo: false, videoUrl: nil),
        
        PostDataModel(id: UUID(), profileImage: "youtubelogo", userName: "criadoresyoutubebrasil", postImage: "youtube-post", isLiked: false, isSaved: true, caption: "Visite a Academia de Criadores do YouTube para começar com seu canal e fazer sua estreia no YouTube.", isVideo: false, videoUrl:nil),
        
        PostDataModel(id: UUID(), profileImage: "user5", userName: "Cleiton", postImage: "sonhos", isLiked: false, isSaved: false, caption: "Disseram que era impossível encontrar alguém que amasse mais a vista do que eu, mas claramente não viram a cara dela olhando para o cardápio de sobremesas! 🍰😍 ", isVideo: false, videoUrl:nil),
        
        PostDataModel(id: UUID(), profileImage: "user2", userName: "Mario", postImage: nil, isLiked: false, isSaved: true, caption: "Querem saber porque meus filmes se dão tão bem em matemática? Porque eles sabem somar carros, subtrair o trânsito, dividir as pistas e multiplicar a ação! E no final, sempre acabam encontrando a raiz quadrada perfeita...a família! 🚗💨", isVideo: true, videoUrl: "cars")
    ]

    
    var stories: [StoryDataModel] = [
        StoryDataModel(image: "user1", name: "Seu story", myStory:true),
        StoryDataModel(image: "user5", name: "Cleiton", myStory:false),
        StoryDataModel(image: "user2", name: "Mario", myStory:false),
        StoryDataModel(image: "user3", name: "Roberto", myStory:false),
        StoryDataModel(image: "user4", name: "Julio", myStory:false),
    ]
    
    
}

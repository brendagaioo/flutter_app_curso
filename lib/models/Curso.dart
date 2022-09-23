import 'package:flutter/material.dart';

class Curso {
  final String image, title, description;
  final int price, duration, id;
  final Color color;
  Curso({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.duration,
    this.color,
  });
}

List<Curso> Cursos = [
  Curso(
      id: 1,
      title: "Flutter",
      price: 135,
      duration: 36,
      description:
          "Flutter é um kit de desenvolvimento de interface de usuário, de código aberto, desenvolvido pela Google em 2015, utiliza a linguagem de programação Dart, possibilitando a criação de aplicativos com apenas um código. Os principais módulos são: Dart - Lógica de programação, Conhecendo Flutter, Aprofundando Flutter e formatação além do código.",
      image: "assets/images/flutter.jpg",
      color: Colors.grey[200]),
  Curso(
      id: 2,
      title: "Machine Learning",
      price: 599,
      duration: 70,
      description:
          "Machine Learning é uma sub-área da inteligência artificial que estuda o reconhecimento de padrões através dos dados. Os principais módulos são: Primeiros passos (O que é Machine Learning?), Avançando na Classificação (Exemplos, vídeos, código), Avançando na Clusterização (Extração de padrão de dados).",
      image: "assets/images/machine-learning.png",
      color: Colors.grey[200]),
  Curso(
      id: 3,
      title: "Finanças",
      price: 75,
      duration: 16,
      description:
          "Quando aprendemos a administrar melhor nossas finanças pessoais, fica mais fácil conquistar o tão sonhado equilíbrio financeiro. Essa condição, vale dizer, é essencial para construirmos uma vida sustentável e, assim, alcançarmos um futuro mais tranquilo. Este curso foi criado justamente para apresentar dicas de como gerenciar suas finanças.",
      image: "assets/images/finanças.jpg",
      color: Colors.grey[200]),
  Curso(
      id: 4,
      title: "Marketing Digital",
      price: 234,
      duration: 30,
      description:
          "Aprenda Marketing Digital para crescer o negócio: Marketing de Redes Sociais, Facebook, SEO, YouTube, E-mail Marketing. Você aprenderá as melhores de estratégias de marketing digital que funcionam na prática e aprenderá a dominar o marketing de redes sociais usando todas as plataformas das redes sociais mais populares para expandir seus negócios.",
      image: "assets/images/marketing-digital.jpg",
      color: Colors.grey[200]),
];

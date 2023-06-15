import 'package:flutter/material.dart'; //Flutter'ın temel materyal tasarım bileşenlerini kullanabilmek için gerekli olan kütüphaneyi içe aktarıyoruz.

void main() {  //Uygulamamızın giriş noktasını belirtir. runApp() işlevi, MyApp sınıfını başlatır.
  runApp(MyApp());
}

class MyApp extends StatelessWidget {  //Uygulamamızın ana sınıfını oluşturur. Bu sınıf, StatelessWidget sınıfını genişletir, yani durumu değiştiremeyen bir widget'tır.
  @override
  Widget build(BuildContext context) {  // Uygulamanın arayüzünü oluşturan yöntemdir. MaterialApp widget'ını ve diğer arayüz bileşenlerini içerir.
    return MaterialApp(  // Temel widget'ımızdır ve birçok özellik sağlar. Başlık, tema ve ana ekranını belirtir.
      title: 'Flutter Uygulaması',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(  //Uygulamanın iskeletini oluşturur. App bar ve body gibi bileşenleri içerebilir.
        appBar: AppBar(  //Uygulama çubuğunu temsil eder. Başlığı belirleyebiliriz.
          title: Text('Merhaba Flutter'),  //Başlığı temsil eder.
        ),
        body: Center(  //Gövde bölümünün içinde merkezlenmiş bir metin widget'ını temsil eder.
          child: Text(  //Ekranda görüntülenen metni temsil eder. Bu örnekte "Hoş geldiniz!" metnini içerir.
            'Hoş geldiniz!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}

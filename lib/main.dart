import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foto Gallery',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(elevation: 1,backgroundColor: Colors.white,
				titleTextStyle: TextStyle(fontSize: 16)),
				scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.white,
				cardColor: Colors.white12,
        textTheme: Typography.material2018(platform: defaultTargetPlatform)
            .white
            .copyWith(
              bodyText1: const TextStyle(color: Colors.black, fontSize: 16),
              bodyText2: const TextStyle(color: Colors.black, fontSize: 14),
              caption: const TextStyle(color: Colors.black, fontSize: 12),
              headline1: const TextStyle(color: Colors.black, fontSize: 96),
              headline2: const TextStyle(color: Colors.black, fontSize: 60),
              headline3: const TextStyle(color: Colors.black, fontSize: 48),
              headline4: const TextStyle(color: Colors.black, fontSize: 34),
              headline5: const TextStyle(color: Colors.black, fontSize: 24),
              headline6: const TextStyle(color: Colors.black, fontSize: 22),
              subtitle1: const TextStyle(color: Colors.black, fontSize: 16),
              subtitle2: const TextStyle(color: Colors.black, fontSize: 14),
              overline: const TextStyle(color: Colors.black, fontSize: 10),
              button: const TextStyle(color: Colors.black, fontSize: 16),
            ),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.blue),
      ),
			darkTheme: ThemeData(
        appBarTheme: const AppBarTheme(elevation: 1,backgroundColor: Colors.black,
				titleTextStyle: TextStyle(fontSize: 16)),
				scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.black,
				cardColor: Colors.black,
        textTheme: Typography.material2018(platform: defaultTargetPlatform)
            .black
            .copyWith(
              bodyText1: const TextStyle(color: Colors.white, fontSize: 16),
              bodyText2: const TextStyle(color: Colors.white, fontSize: 14),
              caption: const TextStyle(color: Colors.white, fontSize: 12),
              headline1: const TextStyle(color: Colors.white, fontSize: 96),
              headline2: const TextStyle(color: Colors.white, fontSize: 60),
              headline3: const TextStyle(color: Colors.white, fontSize: 48),
              headline4: const TextStyle(color: Colors.white, fontSize: 34),
              headline5: const TextStyle(color: Colors.white, fontSize: 24),
              headline6: const TextStyle(color: Colors.white, fontSize: 22),
              subtitle1: const TextStyle(color: Colors.white, fontSize: 16),
              subtitle2: const TextStyle(color: Colors.black, fontSize: 14),
              overline: const TextStyle(color: Colors.white, fontSize: 10),
              button: const TextStyle(color: Colors.white, fontSize: 16),
            ),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.blue),
      ),
      home: HomeView(),
    );
  }
}


class HomeView extends StatelessWidget {
	HomeView({ Key? key }) : super(key: key);
	
	
	 final List<String> _images = [
    'https://images.unsplash.com/photo-1593642532842-98d0fd5ebc1a?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80',
    'https://images.unsplash.com/photo-1612594305265-86300a9a5b5b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
    'https://images.unsplash.com/photo-1612626256634-991e6e977fc1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1712&q=80',
    'https://images.unsplash.com/photo-1593642702749-b7d2a804fbcf?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80'
  ];
	
	final List<String> _postImages = [
		"https://images.unsplash.com/photo-1593642634315-48f5414c3ad9?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80",
		"https://images.unsplash.com/photo-1631379221274-cd9c8956455b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80",
		"https://images.unsplash.com/photo-1631367095408-7293f0a85d85?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2848&q=80",
		"https://images.unsplash.com/photo-1497215728101-856f4ea42174?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80",
		"https://images.unsplash.com/photo-1631283512703-3c23463ba155?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=958&q=80",
		"https://images.unsplash.com/photo-1606787364406-a3cdf06c6d0c?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80",
		"https://images.unsplash.com/photo-1628191079308-6183b016b3df?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80",
		"https://images.unsplash.com/photo-1631237144367-291eca9cd506?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80",
		"https://images.unsplash.com/photo-1621609764095-b32bbe35cf3a?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
	];
	

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				centerTitle: false,
				title: Text('Gallery',
				style: Theme.of(context).appBarTheme.titleTextStyle!.copyWith(color: Colors.blue),),
				actions: [
					IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.camera,color: Colors.blue,))
				],
				iconTheme: const IconThemeData(
					color: Colors.blue
				),
				bottom: PreferredSize(
					preferredSize: const Size.fromHeight(50),
					child: Align(
						alignment: Alignment.centerLeft,
											child: Padding(
											  padding: const EdgeInsets.only(left:16,bottom: 16),
											  child: Text('Today',
											  style: Theme.of(context).textTheme.bodyText1!.copyWith(
											  	fontWeight: FontWeight.bold,fontSize: 34),),
											),
										),
				),
			),
			body: SafeArea(
							child: ListView.builder(
								itemBuilder: (context,index){
									return PostWidget(
										postImage: _postImages[index],
										images: _images,
										onPress: (){
										showBottomSheet(
											context: context, 
											backgroundColor: Colors.transparent,
											builder: (context){
											return ClipRRect(
												borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
																							child: Image.network(_postImages[index],
																							width: MediaQuery.of(context).size.width,
																							height: MediaQuery.of(context).size.height,
																							fit:BoxFit.cover),
																						);
										});
									},);
								},
								itemCount: _postImages.length,),
						),
		);
	}
}

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key? key,
    required List<String> images,required this.onPress,required this.postImage,
  }) : _images = images, super(key: key);

  final List<String> _images;
	final VoidCallback onPress;
	final String postImage;

  @override
  Widget build(BuildContext context) {
    return Card(
    	margin: const EdgeInsets.all(16),
			color: Theme.of(context).cardColor,
    	elevation: 0,
    	child: Column(
    		children: [
    			ListTile(
    				leading: const CircleAvatar(
    					radius: 25,
    					backgroundImage: NetworkImage("https://images.unsplash.com/photo-1631392910207-b54ea50158fe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=932&q=80"),
    				),
    				title: Text('Etornam',
    				style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.w600,
    				fontSize: 18),),
    				subtitle: Row(
    					children: [
    						const Icon(Icons.location_on,color: Colors.blue,size: 17,),
    						const SizedBox(width: 4,),
    						Text('Accra, Ghana',
    						style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.grey.shade700),)
    					],
    				),
    			),
    			InkWell(
						onTap: onPress,
											child: Image.network(postImage,
											height: 250,fit: BoxFit.cover,width: MediaQuery.of(context).size.width,),
										),
    			const SizedBox(height: 10),
    			Row(
    				mainAxisAlignment: MainAxisAlignment.spaceBetween,
    				children: [
    				Row(
    				  children: [
    				    CardHelperWidget(icon: const Icon(Icons.favorite,color: Colors.red,),label: '234',onPress: (){},),
    				    const SizedBox(width: 10,),
    						FlutterImageStack(
								itemBorderColor: Colors.grey.withOpacity(.1),
								backgroundColor: Colors.grey.withOpacity(.1),
    				    imageList: _images,
    				    showTotalCount: false,
    				    totalCount: _images.length,
    				    itemRadius: 40, // Radius of each images
    				    itemCount: 4, // Maximum number of images to be shown in stack
    				    itemBorderWidth: 3, // Border width around the images
    				    ),
    				  ],
    				),
    				CardHelperWidget(icon:
    				 const Icon(CupertinoIcons.chat_bubble_2_fill,color: Colors.grey,),onPress: (){},label: '32',)
    			],)
    		],
    	),
    );
  }
}

class CardHelperWidget extends StatelessWidget {
  const CardHelperWidget({
    Key? key,required this.icon,required this.label,required this.onPress,
  }) : super(key: key);
	
	final Icon icon;
	final String label;
	final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
			onTap: onPress,
			child: Material(	
				borderRadius: BorderRadius.circular(45),
				color: Colors.grey.withOpacity(.1),
				child: Padding(
					padding: const EdgeInsets.all(8.0),
					child: Row(children: [
						icon,
						Text(label,style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.grey),)
					],),
				),
			),
		);
  }
}
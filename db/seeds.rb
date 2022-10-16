# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding...please wait"

#bedsitter
bedsitter = Property.create(property_type:"bedsitter", property_name:"marks apartments", price:14400, location:"githurai 44", image:"https://i.pinimg.com/236x/c7/8c/e0/c78ce01d2ab15ef6efd0369b0af83132.jpg", property_description:"A quiet ,calm enviroment enjoying the view  outside the city")
apartment = Property.create(property_type:"apartment", property_name:"qwetu hostels", price:43500, location:"mombasa ", image:"https://th.bing.com/th/id/OIP.u3l3G6AoP6PSu2CF52PBsgHaHa?pid=ImgDet&w=175&h=175&c=7", property_description:"if you want to enjoy the view of the city with sky view")

one_bedroom = Property.create(property_type:"one_bedroom", property_name:" calm apartments", price:32500, location:"machakos ", image:"https://i.pinimg.com/564x/e5/b3/cf/e5b3cf3f2c74bf403fccdf142dee6588.jpg", property_description:"if cooking is what you  love  imagine this is the property for you ")
smallhouse = Property.create(property_type:"doubleroom", property_name:"spring estate", price:40000, location:"nakuru", image:"https://i.pinimg.com/564x/a7/94/f8/a794f8fd6481c1c246995833bbac0b31.jpg", property_description:"looking for a calm place to chill this one is definalty for you ")
riverside = Property.create(property_type:"singleroom", property_name:"sliver spring ", price:7000, location:"naivasha ", image:"https://i.pinimg.com/564x/e0/8c/36/e08c36473ed16c7752f2a2e15f926c29.jpg", property_description:"talk about no noise zone ")
minimalist = Property.create(property_type:"two_bedroom", property_name:"vio houses", price:20000, location:"westlands ", image:"https://i.pinimg.com/564x/df/15/24/df1524f5922640ca5d9da49ab3266884.jpg", property_description:"looking for a way to use you mony well try this ")
chef_palace = Property.create(property_type:"doubleroom", property_name:" dc Homes", price:10000, location:"kitengela", image:"https://i.pinimg.com/564x/d3/0f/4d/d30f4df2dd57bb620fb708f72e80369f.jpg", property_description:"kichen kings dominate ")
#singleroom
singleroom = Property.create(property_type:"singleroom", property_name:"nairobi flats ", price:14500, location:"lavinton ", image:"https://i.pinimg.com/564x/d4/c3/b9/d4c3b95e435d5f05c84565b26c7e0edd.jpg", property_description:"comes with a sky screen in the living room")
mansion = Property.create(property_type:"apartment", property_name:"sky apartments", price:40000, location:"kileleshwa", image:"https://i.pinimg.com/564x/09/64/ab/0964aba00cb03a48029a2f7accd9715e.jpg", property_description:"has sky view ")

#one bedroom
blue_home = Property.create(property_type:"one_bedroom", property_name:"Qwarco Homes", price:134000, location:"thika ", image:"https://i.pinimg.com/564x/f7/d9/40/f7d940398cdd99005b39664290b7467b.jpg", property_description:"want classy and casual home")

bighouse = Property.create(property_type:"apartment", property_name:" Big House", price:50000, location:"tanzania ", image:"https://i.pinimg.com/236x/a6/ab/c6/a6abc6a4cce7f09d0fac329aa29d3a74.jpg", property_description:"if you want to hide for reallity  try this ")
two_bedroom = Property.create(property_type:"two_bedroom", property_name:"drive in apartments", price:12500, location:"magaribi", image:"https://i.pinimg.com/236x/84/42/3b/84423bad5200bc586155e1c12df64d1f.jpg", property_description:"The Perfect Chill spot for you and your friends ")
student = Property.create(property_type:"bedsitter", property_name:"bub bedsitters", price:4500, location:"kiambu", image:"https://i.pinimg.com/236x/8f/1d/d8/8f1dd88aba4e5abb7253f5127a31991f.jpg", property_description:"availabe for every one ")
#two bedroom
venus = Property.create(property_type:"two_bedroom", property_name:"mars apartments", price:12300, location:"parklands", image:"https://i.pinimg.com/236x/a1/18/45/a11845bf89b950aa392e38a6273d2a71.jpg", property_description:"try out this ")


#doubleroom
doubleroom = Property.create(property_type:"doubleroom", property_name:"oscar singlerooms", price:6500, location:"utawala", image:"https://i.pinimg.com/236x/4c/d6/ce/4cd6cefb02cd203ce8a6640dd38a9cb6.jpg", property_description:"A Customized experience dealing with the rarest Decor")

#apartment


# https://i.postimg.cc/SxYdpmt0/apartments.jpg
# https://i.postimg.cc/fb4Kz16V/bedroom.jpg
# https://i.postimg.cc/3r9nXSDq/burners.jpg
# https://i.postimg.cc/mrMm7TQ3/chimney.jpg
# https://i.postimg.cc/bYM2f1XJ/contruction.jpg
# https://i.postimg.cc/HnW3G5F3/couch.jpg delete 
# https://i.postimg.cc/pr9hnLjR/highrise.jpg
# https://i.postimg.cc/65mcS8cL/highrise-contruction.jpg
# https://i.postimg.cc/3Jv08W7Z/home-street.jpg  delete
# https://i.postimg.cc/htRzfgtR/mansion.jpg
# https://i.postimg.cc/R0MWLRtP/minimalist.jpg
# https://i.postimg.cc/t496BpQt/roam-in-color-Rry-Fk4n-v-Os-unsplash.jpg
# https://i.postimg.cc/vm3cqVLG/roberto-nickson-so3wg-JLw-Dxo-unsplash.jpg  delete
# https://i.postimg.cc/2STZJMCp/sitting-room.jpg
# https://i.postimg.cc/TPwDX0PK/studio.jpg
# https://i.postimg.cc/tC3Pd7f4/unknown.jpg  delete

# https://i.postimg.cc/2yp9XtyS/andrea-davis-VOWXF7ls-AN0-unsplash.jpg
# https://i.postimg.cc/Hx6tDP6g/collov-home-design-Srio-T6td-WII-unsplash.jpg
# https://i.postimg.cc/W4rKVjZP/eric-ardito-HFIpb-JUFDJI-unsplash.jpg
# https://i.postimg.cc/NFGPRHzg/francesca-tosolini-Xc-Vm8mn7-NUM-unsplash.jpg
# https://i.postimg.cc/3wMSn6cf/kenny-eliason-i-Aftd-Icgp-Fc-unsplash.jpg
# https://i.postimg.cc/nzWQ18dC/micah-carlson-q-N-T-p-Y17-Vc-unsplash.jpg
# https://i.postimg.cc/3xkVL2JN/murat-demircan-Tv8-CFQvq7-Xo-unsplash.jpg
# https://i.postimg.cc/3JTbXzzL/nathan-van-egmond-9-LMRQd-Vv7hw-unsplash.jpg
# https://i.postimg.cc/tT4Mx6f9/r-architecture-95-Yg-OUcqb24-unsplash.jpg
# https://i.postimg.cc/0N2TphKg/r-architecture-T6d96-Qrb5-MY-unsplash.jpg
# https://i.postimg.cc/B60zQy5P/sieuwert-otterloo-aren8nutd1-Q-unsplash.jpg
# https://i.postimg.cc/xTTWzWwK/spacejoy-8-Y8-U9fdu-ILs-unsplash.jpg
# https://i.postimg.cc/3wKLsp32/todd-kent-178j8t-Jr-Nlc-unsplash.jpg
# https://i.postimg.cc/Kz3twv3n/vojtech-bruzek-Yrxr3bs-Pd-S0-unsplash.jpg


puts "Seeding 100% Complete"
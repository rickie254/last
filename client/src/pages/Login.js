import Navbar from "../components/Navbar";
import { AppContext } from "../contexts/AppContext";
import { useState, useContext } from "react";
import { useNavigate } from "react-router-dom";
import MobileNav from "../components/MobileNav";

const Login = () => {
  const [login, setLogin] = useState({
    first_name: null,
    last_name: null,
    email: null,
    password: null,
  });

  const navigate = useNavigate();
  const { user, setUser, isLoggedIn, setIsLoggedIn, setDisabled, changedState, setChangedState } = useContext(AppContext);
  const [ showError, setShowError ] = useState(false);

  const handleNavigate = () => {
    navigate("/signup");
  };

  const handleInput = (event) => {
    const name = event.target.name;
    const value = event.target.value;
    // console.log(user);
    return setLogin({ ...login, [name]: value.toLowerCase() });
  };

  const handleLogin = () => {
    setIsLoggedIn(true);
  };

  const handleSubmit = async (event) => {
    event.preventDefault();
    const addUser = {
      first_name: login.first_name,
      last_name: login.last_name,
      email: login.email,
      password: login.password,
    };
    let find = await fetch("https://arasaka-api.herokuapp.com/login", {
      method: "POST",
      headers: {
        "content-type": "application/json",
      },
      body: JSON.stringify(addUser),
    });
    let data = await find.json();
    await console.log(data)
    await console.log(find.ok)
    // response ?  : setIsLoggedIn(false);
    if (find.ok) {
      setIsLoggedIn(true)
      setUser(data);
      setDisabled(false);
      localStorage.setItem('user', JSON.stringify(data))
      navigate("/");
    }
    else{
      setShowError(true);
    }
  };

  return (
    <div>
      <Navbar />
      <div className="bg-indigo-50 font-jost mt-[40px]">
        <div className="xl:px-20 md:px-10 sm:px-6 px-4 md:py-12 py-9 2xl:mx-auto 2xl:container md:flex items-center justify-center">
          <div className=" md:hidden sm:mb-8 mb-6"></div>
          <div className="bg-white shadow-lg rounded  md:w-[100%] md:max-w-[800px] lg:w-[100%] lg:max-w-[1000px] flex flex-col lg:flex-row">
            <div className="md:max-w-[800px] md:w-[100%] lg:w-[500px]">
              <img
                src={process.env.PUBLIC_URL + "/big_house.jpg"}
                alt=""
                className="lg:w-[100%] lg:h-[100%] object-cover"
              />
            </div>
            <div className="lg:w-[500px] flex flex-col items-center lg:px-10 sm:px-6 sm:py-10 xxs:py-4">
              <p
                tabIndex={0}
                className="flex justify-around xxs:text-2xl xxs:w-[250px] xxs:p-1 focus:outline-none md: text-3xl lg:text-4xl leading-6 text-gray-800  lg:p-5 lg:w-[400px]"
              >
                Login to your account
              </p>
              <p
                tabIndex={0}
                className="focus:outline-none text-sm mt-4 font-medium leading-none text-gray-500 flex"
              >
                Don't have an account?
                <h3
                  onClick={handleNavigate}
                  className="hover:text-gray-500 focus:text-gray-500 focus:outline-none focus:underline hover:underline text-sm font-medium leading-none text-gray-800 cursor-pointer ml-2"
                >
                  Signup here
                </h3>
              </p>
              <form
                onSubmit={handleSubmit}
                className="xxs:w-[250px] xsm:w-[400px] sm:w-[500px] md:w-[600px] lg:w-[300px] mt-5"
              >
                <div>
                  <label
                    htmlFor="first-name"
                    className="text-sm font-medium leading-none text-gray-800 "
                  >
                    {" "}
                    First Name{" "}
                  </label>
                  <input
                    id="first-name"
                    aria-labelled-by="first-name"
                    name="first_name"
                    type="text"
                    className="bg-gray-100 border rounded text-xs font-medium leading-none placeholder-gray-800 text-gray-800 py-3 w-full pl-3 mt-2"
                    placeholder="e.g: John"
                    onChange={handleInput}
                  />
                </div>
                <div className="mt-3 w-full">
                  <label
                    htmlFor="last-name"
                    className="text-sm font-medium leading-none text-gray-800 "
                  >
                    {" "}
                    Last Name{" "}
                  </label>
                  <input
                    id="last-name"
                    aria-labelled-by="last-name"
                    name="last_name"
                    type="text"
                    className="bg-gray-100 border rounded text-xs font-medium leading-none placeholder-gray-800 text-gray-800 py-3 w-full pl-3 mt-2"
                    placeholder="e.g: Doe "
                    onChange={handleInput}
                  />
                </div>
                <div className="mt-3 w-full">
                  <label
                    htmlFor="email"
                    className="text-sm font-medium leading-none text-gray-800 "
                  >
                    {" "}
                    Email{" "}
                  </label>
                  <input
                    id="email"
                    aria-labelled-by="email"
                    name="email"
                    type="email"
                    className="bg-gray-100 border rounded text-xs font-medium leading-none placeholder-gray-800 text-gray-800 py-3 w-full pl-3 mt-2"
                    placeholder="e.g: john@gmail.com "
                    onChange={handleInput}
                  />
                </div>
                <div className="mt-3 w-full">
                  <label
                    htmlFor="myInput"
                    className="text-sm font-medium leading-none text-gray-800 "
                  >
                    {" "}
                    Password{" "}
                  </label>
                  <div className="relative flex items-center justify-center">
                    <input
                      id="myInput"
                      name="password"
                      //   type={show-pass ? "text" : "password"}
                      onChange={handleInput}
                      className="bg-gray-100 border rounded text-xs font-medium leading-none text-gray-800 py-3 w-full pl-3 mt-2"
                    />
                  </div>
                </div>
                <div
                  className="mt-3"
                  //   style={login ? { display: "none" } : { display: "block" }}
                >
                  <label
                    htmlFor="myInput"
                    className="text-sm font-medium leading-none text-red-700 "
                  >
                    Login if you have an account
                  </label>
                </div>
                <div
                  className="mt-8"
                  //   style={login ? { display: "block" } : { display: "none" }}
                >
                  <label
                    htmlFor="myInput"
                    className="text-sm font-medium leading-none text-red-700 p-2"
                    style={showError?{display:"block"}:{display:"none"}}
                  >
                    could not identify user, try again
                  </label>
                </div>
                <div className="mt-2">
                  <input
                    type="submit"
                    className="focus:ring-2 focus:ring-offset-2 focus:ring-indigo-700 text-sm font-semibold leading-none text-white focus:outline-none bg-blue-500 border rounded hover:bg-blue-600 py-4 w-full"
                    value="Login"
                  />
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <MobileNav />
    </div>
  );
};

export default Login;

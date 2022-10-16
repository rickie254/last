const HeroSection = () => {
  return (
    <div>
      <div>
        <img
          src={"https://i.pinimg.com/564x/71/29/de/7129de7d1b64eeee58544041fe76eec5.jpg"}
          alt=""
          className="absolute top-0 z-0 brightness-50 h-[650px] object-cover w-screen"
        />
      </div>
      <div className="relative top-56 z-10 flex justify-around items-center">
        <h1 className="w-[400px] text-3xl text-white font-work font-semibold text-center sm:text-6xl sm:w-[700px]">
          Are looking for properties? Don't fret, you are in the right place.
        </h1>
      </div>
    </div>
  );
};

export default HeroSection;

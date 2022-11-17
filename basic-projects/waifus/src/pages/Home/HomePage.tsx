import { useState, useEffect } from 'react';
import './HomePage.css';
import { FaHeart } from 'react-icons/fa';
import { ImHeartBroken } from 'react-icons/im';

export const Home = () => {
  const [waifu, setWaifu] = useState('');

  let [total, setTotal] = useState(0);
  let [click, setClick] = useState(0);

  function handleWaifu(like: boolean) {
    if (like) {
      setTotal((total += 1));
    }

    setClick((click += 1));
  }

  useEffect(() => {
    fetch('https://api.waifu.im/random/')
      .then((response) => response.json())
      .then((data) => {
        setWaifu(data.images[0].url);
      })
      .catch((err) => {
        console.log(err.message);
      });
  }, [click]);

  return (
    <>
      <div>
        <h1>É a sua waifu?</h1>
        <div className="image">
          <img src={waifu} alt="" />
        </div>

        <div className="buttons">
          <FaHeart onClick={() => handleWaifu(true)} className="like" />
          <ImHeartBroken
            onClick={() => handleWaifu(false)}
            className="dislike"
          />
        </div>
      </div>

      <div className="history">
        <h2 className="total-text">Total de likes</h2>

        <h2 className="total">{total}</h2>
      </div>
    </>
  );
};

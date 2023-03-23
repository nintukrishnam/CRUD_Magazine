import React from "react";
import { useEffect } from "react";
import { useState } from "react";
import { Link, useLocation, useNavigate } from "react-router-dom";
import axios from "axios";

const Home = () => {
  const [posts, setPosts] = useState([]); //empty array

  const cat = useLocation().search;

  // const navigate = useNavigate();

  // useEffect(() => {
  //     if (localStorage.getItem("user") === "null") {
  //       // alert(localStorage.getItem("user"));
  //       navigate("/login");
  //     } else {
  //       alert(localStorage.getItem("user"));
  //       // navigate("/login");
  //     }
  //     });
  useEffect(() => {
    const fetchData = async () => {
      try {
        const res = await axios.get(`http://localhost:8800/api/posts${cat}`);
        setPosts(res.data);
      } catch (err) {
        console.log(err);
      }
    };
    fetchData();
  }, [cat]); //when changing the category it will call the fetchData function again

  const getText = (html) => {
    const doc = new DOMParser().parseFromString(html, "text/html");
    return doc.body.textContent;
  };

  return (
    <div className="home">
      <div className="posts">
        {posts.map((post) => (
          <div className="post" key={post.id}>
            <div className="img">
              <img src={`../upload/${post.img}`} alt="" />
            </div>
            <div className="content">
              <Link className="link" to={`/post/${post.id}`}>
                <h1>{post.title}</h1>
              </Link>
              <p>{getText(post.desc)}</p>
              {/* <button><Link className="link" to={`/post/${post.id}`}>Read More</Link></button> */}
            </div>
          </div>
        ))}
      </div>
    </div>
  );
};

export default Home;

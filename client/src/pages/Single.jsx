import React, { useEffect, useState } from "react";
import Edit from "../img/edit.png";
import Delete from "../img/delete.png";
import { Link, useLocation, useNavigate } from "react-router-dom";
import Menu from "../components/Menu";
import axios from "axios";
import moment from "moment"; //for showing the post date
import { useContext } from "react";
import { AuthContext } from "../context/authContext";
import DOMPurify from "dompurify";

const Single = () => {
  const [post, setPost] = useState({});

  const location = useLocation();
  const navigate = useNavigate();

//index 2 from location (after the post will send the post number)
  const postId = location.pathname.split("/")[2]; 

  const { currentUser } = useContext(AuthContext);

  useEffect(() => {
      if (localStorage.getItem("user") === "null") {
        // alert(localStorage.getItem("user"));
        navigate("/login");
      } else {
        // alert(localStorage.getItem("user"));
        // navigate("/login");
      }
      })
  const uid = currentUser.id

  const user = {
    id: postId,
    uid: uid
  }


  useEffect(() => {
    const fetchData = async () => {
      try {
        const res = await axios.get(`http://localhost:8800/api/posts/${postId}`);
        setPost(res.data);
      } catch (err) {
        console.log(err);
      }
    };
    fetchData();
  }, [postId]);

  const handleDelete = async ()=>{
    try {
      await axios.delete(`http://localhost:8800/api/posts/${postId}`, {
        data: user,
      });
      navigate("/")
    } catch (err) {
      console.log(err);
    }
  }

  const getText = (html) =>{
    const doc = new DOMParser().parseFromString(html, "text/html")
    return doc.body.textContent
  }

  return (
    <div className="single">
      <div className="content">
        <img src={`../upload/${post.img}`} alt="" classname="imagesingle"/>
        <div className="user">
          {/* if image is there  */}
          {post.userImg && <img
            src={post.userImg}
            alt=""
          />}
          <div className="info">
            <span>{post.username}</span>
            <p>Posted {moment(post.date).fromNow()}</p>
          </div>

          {currentUser.username === post.username && (
            <div className="edit">
              <Link to={`/write?edit=2`} state={post}>
                <img src={Edit} alt="" />
              </Link>
              <img onClick={handleDelete} src={Delete} alt="" />
            </div>
            )}
        </div>
        <h1>{post.title}</h1>
        {/* <p
          dangerouslySetInnerHTML={{
            __html: DOMPurify.sanitize(post.desc),
          }}
        ></p>   */}

        {getText(post.desc)}
             </div>

             {/* menu component */}
      <Menu cat={post.cat}/> 
    </div>
  );
};

export default Single
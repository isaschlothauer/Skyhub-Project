import * as React from "react";
import { useState } from "react";
import ArrowRight from "../assets/images/icons/arrow-right-pink.png";
import ArrowLeft from "../assets/images/icons/arrow-left-pink.png";
import Image from "next/image";

interface PaginationProps {
  CurrentPage: number;
}

export default function Pagination({ CurrentPage }: PaginationProps) {
  const [currentPage, setCurrentPage] = useState(1);
  const [totalPage, setTotalPage] = useState(3);

  const handleNextPage = () => {
    setCurrentPage(currentPage + 1);
  };

  const handlePrevPage = () => {
    setCurrentPage(currentPage - 1);
  };
  return (
    <div className="container flex flex-row flex-wrap justify-center items-center gap-2 ">
      {currentPage > 1 && (
        <button onClick={handlePrevPage}>
          <Image src={ArrowLeft} alt="Go to previous page" />
        </button>
      )}
      {currentPage}
      {currentPage < totalPage && (
        <button onClick={handleNextPage}>
          <Image src={ArrowRight} alt="Go to next page" />
        </button>
      )}
    </div>
  );
}

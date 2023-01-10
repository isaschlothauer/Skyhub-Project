import * as React from "react";
import { useState } from "react";
import ArrowRight from "../assets/images/icons/arrow-right-pink.png";
import ArrowLeft from "../assets/images/icons/arrow-left-pink.png";
import ArrowFirst from "../assets/images/icons/arrow-first-pink.png";
import ArrowLast from "../assets/images/icons/arrow-last-pink.png";
import Image from "next/image";
import { useRouter } from "next/router";

interface PaginationProps {
  totalPage: number;
}

export default function Pagination({ totalPage }: PaginationProps) {
  const router = useRouter();
  const currentPage = router.query.page
    ? parseInt(router.query.page as string)
    : 1;

  const handlePageChange = (selectedPage: number) => {
    const newQuery = { ...router.query, page: selectedPage };
    console.log(newQuery);
    router.push({ query: newQuery });
  };

  const handleNextPage = () => {
    handlePageChange(currentPage + 1);
  };

  const handlePrevPage = () => {
    handlePageChange(currentPage - 1);
  };

  const handleFirstPage = () => {
    handlePageChange(1);
  };

  const handleLastPage = () => {
    handlePageChange(totalPage);
  };
  return (
    <div className="container flex flex-row flex-wrap justify-center items-center gap-2 ">
      {currentPage >= 3 && (
        <button onClick={handleFirstPage}>
          <Image src={ArrowFirst} alt="Go to first page" />
        </button>
      )}
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
      {currentPage >= totalPage - 2 && (
        <button onClick={handleLastPage}>
          <Image src={ArrowLast} alt="Go to first page" />
        </button>
      )}
    </div>
  );
}

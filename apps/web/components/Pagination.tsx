import * as React from "react";
import { useState } from "react";
import ArrowRight from "../assets/images/icons/arrow-right-pink.png";
import ArrowLeft from "../assets/images/icons/arrow-left-pink.png";
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
  const handleNextPage = () => {
    handlePageChange(currentPage + 1);
  };

  const handlePageChange = (selectedPage: number) => {
    const newQuery = { ...router.query, page: selectedPage };
    console.log(newQuery);
    router.push({ query: newQuery });
  };

  const handlePrevPage = () => {
    handlePageChange(currentPage - 1);
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

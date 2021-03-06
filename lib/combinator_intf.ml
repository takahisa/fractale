(*
 * Copyright (c) 2017-2018 Takahisa Watanabe <linerlock@outlook.com> All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *)
open Iso

module type S = sig
  type 'a syntax
  val ( *>): unit syntax -> 'a syntax -> 'a syntax
  val ( <*): 'a syntax -> unit syntax -> 'a syntax
  val sequence: 'a syntax list -> 'a list syntax
  val choice: 'a syntax list -> 'a syntax
  val option: 'a syntax -> 'a option syntax
  val count: int -> 'a syntax -> 'a list syntax
  val rep0: 'a syntax -> 'a list syntax
  val rep1: 'a syntax -> 'a list syntax
  val sep_by0: delimiter:unit syntax -> 'a syntax -> 'a list syntax
  val sep_by1: delimiter:unit syntax -> 'a syntax -> 'a list syntax
  val end_by0: delimiter:unit syntax -> 'a syntax -> 'a list syntax
  val end_by1: delimiter:unit syntax -> 'a syntax -> 'a list syntax
  val sep_end_by0: delimiter:unit syntax -> 'a syntax -> 'a list syntax
  val sep_end_by1: delimiter:unit syntax -> 'a syntax -> 'a list syntax
  val chainl1: ('a * 'a, 'a) iso -> unit syntax -> 'a syntax -> 'a syntax
  val chainr1: ('a * 'a, 'a) iso -> unit syntax -> 'a syntax -> 'a syntax
  val between: unit syntax -> unit syntax -> 'a syntax -> 'a syntax
  val text: string -> unit syntax
  val char: char -> unit syntax
  val lower: char syntax
  val upper: char syntax
  val alpha: char syntax
  val digit: char syntax
  val space: unit syntax
  val spaces0: unit syntax
  val spaces1: unit syntax
end

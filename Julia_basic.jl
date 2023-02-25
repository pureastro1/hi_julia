### A Pluto.jl notebook ###
# v0.19.9

using Markdown
using InteractiveUtils

# ╔═╡ 0e0ed084-a20e-40bb-82b4-b36a544c7196
using PlutoUI

# ╔═╡ cbd4e9b6-a5a2-11ed-3d10-47de95d1f538
md"# 줄리아(Julia) 에 대하여

줄리아는 과학 연산(scientific computation)과 자료 처리(data manipulation), 그리고 기계 학습(machine learning)을 목적으로 고안된 현대적인 고성능 프로그래밍 언어로 대량의 자료와 계산을 다룰 수 있다. 2012년 Alan Edelman이 이끄는 컴퓨터 과학자, 수학자 그룹에 의해 개발된 줄리아는 매우 강력한 연산 기능을 위해 세 가지 핵심 요소를 결합하였다.

* 빠르고,

* 배우고 사용하기 쉬우며,

* 오픈 소스 (무료)
"

# ╔═╡ f9dfda4f-ce6a-42c9-9380-6cc5f26ba356
md"""$(Resource("./Figure1.jpg"))
그림 1 과학 연산 언어 (Fortran, C++, Python, R, 줄리아) 비교: 가로축-난이도, 세로축-연산 속도
"""

# ╔═╡ afbd173c-812b-4501-9de0-7cf9d6719ca9
md"""
줄리아의 개발자들은 2012blogpost에서 줄리아를 만든 이유에 대해 다음과 같이 썼다.
```
우리는 욕심이 많다: 더 많은 것을 원한다. 우리는 liberal license를  가진 오픈 소스 언어를 원한다. 우리는 Ruby의 dynamism을 가지면서 C의 속도를 원한다. 우리는 Lisp와 같이 true macro를 가지지만 Matlab 처럼 친근한 수학적 표기법을 가지는 homoiconic 한 언어를 원한다. 우리는 Python만큼 일반적인 프로그래밍에 유용하고, 통계학에 있어 R처럼 쉬우며, Perl과 같이 문자열 처리에 자연스럽고, Matlab만큼 선형 대수에 강력하며, 쉘(Shell)처럼 프로그램 연결에 탁월한 뭔가를 원한다. 배우기 쉽지만, 대부분의 진지한 해커들을 기쁘게 할 그 무엇. 우리는 그것이 상호작용하며 컴파일이 가능하길 원한다.
```
"""

# ╔═╡ 21acf0b4-ecd8-4c07-8ddd-9dc8b41044e2
md"실제 대다수의 사용자들이 줄리아에 매력을 갖는 주된 이유는 뛰어난 속도 때문이다. 실제로 줄리아는 수많은 프로그래밍 언어 중 극소수에게만 부여되는 페타플롭 클럽 (petaflop club)  회원 자격을 가지고 있다. 현재 이 클럽에는 C, C++, Fortran과 줄리아만이 포함되어 있다. 
"

# ╔═╡ f0a0cae1-e53a-474c-9a97-691a28748406
md"## 1.1 다른 프로그래밍 언어와 줄리아
프로그래밍 언어를 배우는데는 상당한 시간과 노력이 들기 때문에 이미 하나 이상의 프로그래밍 언어를 다룰 수 있는 사용자가 새로운 또다른 프로그래밍 언어를 배우기 위해서는 강력한 동기가 필요하다. 프로그래밍 언어의 기본적인 특성인 성능과 사용자 편의성은 대체로 상호 배타적인 성향이 강하다. 달리 말하면, 성능이 좋은 언어는 배우고 사용하기가 어려운 경우가 많고 사용자가 쉽게 

**공사중**

**다른 언어들과의 비교 결과 (그림 2 설명 필요)**

**https://julialang.org/benchmarks/**
"

# ╔═╡ d3876e10-b5f2-4a2f-9777-e62b474fd48d
md"""$(LocalResource("/Users/pureastro/julia_project/pluto_notebook/julia_book/Figure2.svg"))
그림 2 다양한 프로그래밍 언어의 컴파일러 성능 비교
"""

# ╔═╡ 3fd61df7-6092-4838-8ba4-3fdf68618d62
md"
**인터프리터 언어인 Python과 달리 컴파일 언어인 줄리아는 Python 처럼 사용하기 쉽지만  컴퓨터가 쉽게 이해할 수 있는 저수준 코드로 변환해주기 때문에 훨씬 빠르게 구동한다. 이것이 줄리아가 대량의 자료와 많은 연산을 요구하는 작업에 적합한 이유다.**

**공사중**

널리 알려진 프로그래밍 언어인 C++과 Fortran 은 매우 빠르고 오픈 소스 컴파일러 가 매우 탁월하지만, 정적 언어(static language)로서 컴파일, 자료형 검토가 필요하며, 전문적인 주의를 요구하기 때문에 배우기 어렵고 초기 시험용 (prototype) 프로그램 제작에도 매우 오랜 시간이 걸린다. Python 과 R 은 동적 언어(Dynamic language)로서 컴파일이 필요치 않아 배우고 사용하기 쉬우며 오픈 소스로 누구나 사용할 수 있다. 그러나 이들의 수치 연산 성능은 매우 느린 편이다. Matlab 은 상대적으로 빠르며 (줄리아가 훨씬 빠르지만) 배우고 사용하기 쉽지만 사용하는데 적지 않은 비용이 든다. 줄리아는 LLVM (Low Level Virtual Machine) 기반 JIT (Just-in-time) 컴파일러를 이용한 덕분에 매우 빠른 연산 능력을 가진다. 

줄리아는 프로그래밍 언어에 있어 중요한 진전들 - 병렬 연산을 위한 탁월한 지원 또는 실용적 성능의 프로그래밍 방향 - 을 통합하여 설계되었다. 여러 진전들 사이에서 우리는multiple dispatch (예: 피연산자의 자료형에 따라 다른 메서드에 의해 평가되는 함수), 유사 Lisp매크로를 통한 메타프로그래밍 (프로그램 자신을 새로운 코드나 함수로 변환하고 이를 이용해 다른 함수들을 생성), 그리고 다른 프로그래밍 언어와의 수월한 상호 연동성 (C++과 Python 같은 다른 언어의 함수나 라이브러리를 호출하는 기능)을 소개하고자 한다. 이러한 특징들이 줄리아로 하여금 과학적 연산과 데이터 처리를 넘어 보다 확장된 작업들을 다룰 수 있는 범용성 언어로서의 지위를 가질 수 있도록 한다.

줄리아 사용자 커뮤니티는 많은 수의 패키지들 (패키지는 기본 언어에 부가 기능을 추가함; 2023년 2월 기준 7400개 이상의 패키지가 등록되어 있다)을 개발하여 배포하고 있다. 신생 언어인 줄리아의 생태계가 C++, Python 또는 R과 비교하여 충분히 성장하지는 않았으나 프로그래밍 언어로의 진입 성장률은 지속적으로 증가하고 있다. 2023년 1월 TIOBE Programming Community 지수 에서, 줄리아는 29위를 기록하여 오랜 역사를 가진 포트란(Fortran)과 비슷한 수준으로 성장했다.
"

# ╔═╡ ca856d13-8851-4799-873e-f028af061165
md"## 1.2 2언어 문제와 Multiple Dispatch
과거의 대다수 프로그램 개발자들은 파이썬과 같은 쉬운 동적 프로그래밍 언어를 이용하여 단순화된 초기 형태의 어플리케이션을 만들어 코드의 정상 작동을 확인한 후 실제 사용자들에게 적합하도록 빠른 C나 다른 고성능의 저수준 언어로 변환했다. 즉, 단순한 코드는 파이썬 또는 R을 사용해 작성하고, 연산 과정이 많은 복잡한 코드는 C와 같은 언어로 작성하는 독립된 두 단계를 거쳐야만 했다. 이로 인해 프로그램 개발자는 보다 많은 프로그래밍 언어를 다루는데 많은 시간을 소비해야 했고, 코드의 검증과 변환 과정이 복잡하여 예기치 못한 오류를 발생시키는 등의 문제가 발생했다. 줄리아는 초기 시험 코드 작성을 하기에 매우 쉽고 실제 프로그램 실행이 가능하도록 빠른 특성을 통해 이러한 2언어 문제로부터 해방될 수 있었다.

**공사중** 

**직관적인 표현식 (Julia Data Science)**

**유니코드 사용 가능**

"

# ╔═╡ dd865026-2f93-4f3f-871f-a41c54333cf7
md"#2 줄리아 시작하기
줄리아를 설치하기 위해서 줄리아 설치 페이지[https://julialang.org/downloads](https://julialang.org/downloads)에 접속하여 사용자 운영체제와 CPU 환경에 맞는 것을 선택하여 다운로드한다. 설치 과정은 매우 간단하여 설치 팝업창의 안내에 따라 진행하면 된다.
"

# ╔═╡ 6ee8f556-f665-41b6-90ad-2883adecc98e
md"[Interactivity sample notebook](./sample/Interactivity.jl)"

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.49"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.2"
manifest_format = "2.0"
project_hash = "502a5e5263da26fcd619b7b7033f402a42a81ffc"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "0.5.2+0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "c47c5fa4c5308f27ccaac35504858d8914e102f9"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.4"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.3"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "7.84.0+0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.10.2+0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.MIMEs]]
git-tree-sha1 = "65f28ad4b594aebe22157d6fac869786a255b7eb"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "0.1.4"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.0+0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2022.2.1"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.20+0"

[[deps.Parsers]]
deps = ["Dates", "SnoopPrecompile"]
git-tree-sha1 = "151d91d63d8d6c1a5789ecb7de51547e00480f1b"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.5.4"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.8.0"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "eadad7b14cf046de6eb41f13c9275e5aa2711ab6"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.49"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "47e5f437cc0e7ef2ce8406ce1e7e24d44915f88d"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.3.0"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.SnoopPrecompile]]
deps = ["Preferences"]
git-tree-sha1 = "e760a70afdcd461cf01a575947738d359234665c"
uuid = "66db9d55-30c0-4569-8b51-7e840670fc0c"
version = "1.0.3"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.0"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.1"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.Tricks]]
git-tree-sha1 = "6bac775f2d42a611cdfcd1fb217ee719630c4175"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.6"

[[deps.URIs]]
git-tree-sha1 = "ac00576f90d8a259f2c9d823e91d1de3fd44d348"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.4.1"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.12+3"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.1.1+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.48.0+0"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+0"
"""

# ╔═╡ Cell order:
# ╟─0e0ed084-a20e-40bb-82b4-b36a544c7196
# ╟─cbd4e9b6-a5a2-11ed-3d10-47de95d1f538
# ╠═f9dfda4f-ce6a-42c9-9380-6cc5f26ba356
# ╟─afbd173c-812b-4501-9de0-7cf9d6719ca9
# ╟─21acf0b4-ecd8-4c07-8ddd-9dc8b41044e2
# ╠═f0a0cae1-e53a-474c-9a97-691a28748406
# ╠═d3876e10-b5f2-4a2f-9777-e62b474fd48d
# ╠═3fd61df7-6092-4838-8ba4-3fdf68618d62
# ╠═ca856d13-8851-4799-873e-f028af061165
# ╠═dd865026-2f93-4f3f-871f-a41c54333cf7
# ╠═6ee8f556-f665-41b6-90ad-2883adecc98e
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002

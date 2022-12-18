
<!doctype html>
<html lang="en">
  <head>
    <title>Code coverage report for arbiter_spec.moon</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="../style/reset.css">
    <link rel="stylesheet" href="../style/style.css">
  </head>
  <body>
   <div id="page-container">
      <header>
        <nav>
          
<ul class="inline-list">
    <li>
      <a href="../index.html">All Files</a> /
    </li>
    <li>
      <a href="./index.html">spec</a> /
    </li>

  <li>arbiter_spec.moon</li>
</ul>

        </nav>
      </header>

      <main>
        <header class="hit-miss-statistics">
          
<ul class="inline-list">
  <li>
    <span class="strong">93.62%</span>
    <span class="quiet">Rate</span>
  </li>
  <li>
    <span class="strong">44</span>
    <span class="quiet">Hits</span>
  </li>
  <li>
    <span class="strong">3</span>
    <span class="quiet">Missed</span>
  </li>
</ul>

<div class="hit-percentage-status hit-percentage-status-high"></div>

        </header>
        <section id="content">
          
  <section class="file-coverage">

    <ul class="line-numbers undecorated">
        <li>1</li>
        <li>2</li>
        <li>3</li>
        <li>4</li>
        <li>5</li>
        <li>6</li>
        <li>7</li>
        <li>8</li>
        <li>9</li>
        <li>10</li>
        <li>11</li>
        <li>12</li>
        <li>13</li>
        <li>14</li>
        <li>15</li>
        <li>16</li>
        <li>17</li>
        <li>18</li>
        <li>19</li>
        <li>20</li>
        <li>21</li>
        <li>22</li>
        <li>23</li>
        <li>24</li>
        <li>25</li>
        <li>26</li>
        <li>27</li>
        <li>28</li>
        <li>29</li>
        <li>30</li>
        <li>31</li>
        <li>32</li>
        <li>33</li>
        <li>34</li>
        <li>35</li>
        <li>36</li>
        <li>37</li>
        <li>38</li>
        <li>39</li>
        <li>40</li>
        <li>41</li>
        <li>42</li>
        <li>43</li>
        <li>44</li>
        <li>45</li>
        <li>46</li>
        <li>47</li>
        <li>48</li>
        <li>49</li>
        <li>50</li>
        <li>51</li>
        <li>52</li>
        <li>53</li>
        <li>54</li>
        <li>55</li>
    </ul>

    <ul class="line-coverages undecorated">
        <li class="line-hit">1x</li>
        <li class="line-empty">
</li>
        <li class="line-hit">2x</li>
        <li class="line-hit">1x</li>
        <li class="line-hit">2x</li>
        <li class="line-hit">1x</li>
        <li class="line-empty">
</li>
        <li class="line-hit">1x</li>
        <li class="line-empty">
</li>
        <li class="line-hit">1x</li>
        <li class="line-hit">1x</li>
        <li class="line-empty">
</li>
        <li class="line-hit">1x</li>
        <li class="line-hit">2x</li>
        <li class="line-hit">1x</li>
        <li class="line-hit">1x</li>
        <li class="line-empty">
</li>
        <li class="line-hit">2x</li>
        <li class="line-hit">1x</li>
        <li class="line-hit">1x</li>
        <li class="line-hit">4x</li>
        <li class="line-empty">
</li>
        <li class="line-hit">3x</li>
        <li class="line-hit">3x</li>
        <li class="line-miss">
</li>
        <li class="line-hit">1x</li>
        <li class="line-hit">1x</li>
        <li class="line-hit">1x</li>
        <li class="line-hit">2x</li>
        <li class="line-hit">1x</li>
        <li class="line-empty">
</li>
        <li class="line-hit">1x</li>
        <li class="line-hit">1x</li>
        <li class="line-hit">1x</li>
        <li class="line-hit">1x</li>
        <li class="line-miss">
</li>
        <li class="line-hit">2x</li>
        <li class="line-hit">1x</li>
        <li class="line-hit">1x</li>
        <li class="line-hit">6x</li>
        <li class="line-hit">5x</li>
        <li class="line-hit">5x</li>
        <li class="line-hit">5x</li>
        <li class="line-empty">
</li>
        <li class="line-hit">1x</li>
        <li class="line-hit">1x</li>
        <li class="line-hit">1x</li>
        <li class="line-hit">2x</li>
        <li class="line-hit">1x</li>
        <li class="line-hit">2x</li>
        <li class="line-hit">1x</li>
        <li class="line-hit">1x</li>
        <li class="line-hit">1x</li>
        <li class="line-miss">
</li>
        <li class="line-hit">2x</li>
    </ul>

    <ul class="code undecorated">
        <li class="line-hit">arbiter = require &#39;arbiter&#39;</li>
        <li class="line-empty">
</li>
        <li class="line-hit">describe &quot;Content arbiter&quot;, -&gt;</li>
        <li class="line-hit">	it &quot;parses headers correctly&quot;, -&gt;</li>
        <li class="line-hit">		accepted = arbiter.new(&#39;text&#47;html&#39;)[1]</li>
        <li class="line-hit">		assert.same {q: 1, s: 3, type: &#39;text&#47;html&#39;, pattern: &#39;^text&#47;html$&#39;}, accepted</li>
        <li class="line-empty">
</li>
        <li class="line-hit">	it &quot;orders types alphabetically&quot;, -&gt;</li>
        <li class="line-empty">		-- To make the ordering of headers with equal Q-value more deterministic</li>
        <li class="line-hit">		accepted = arbiter.new &#39;c&#47;*, b&#47;*, a&#47;*&#39;</li>
        <li class="line-hit">		assert.same {&#39;a&#47;*&#39;, &#39;b&#47;*&#39;, &#39;c&#47;*&#39;}, [v.type for v in *accepted]</li>
        <li class="line-empty">
</li>
        <li class="line-hit">	it &quot;respects Q-values&quot;, -&gt;</li>
        <li class="line-hit">		accepted = arbiter.new &#39;text&#47;html, application&#47;xhtml+xml, application&#47;xml;q=0.9, image&#47;webp, *&#47;*;q=0.8&#39;</li>
        <li class="line-hit">		assert.same({</li>
        <li class="line-hit">			&#39;application&#47;xhtml+xml&#39;</li>
        <li class="line-empty">			&#39;image&#47;webp&#39;</li>
        <li class="line-hit">			&#39;text&#47;html&#39;</li>
        <li class="line-hit">			&#39;application&#47;xml&#39;</li>
        <li class="line-hit">			&#39;*&#47;*&#39;</li>
        <li class="line-hit">		}, [v.type for v in *accepted])</li>
        <li class="line-empty">
</li>
        <li class="line-hit">	it &quot;returns valid patterns&quot;, -&gt;</li>
        <li class="line-hit">		accepted = arbiter.new &#39;*&#47;*, application&#47;*, text&#47;html, hack&#47;%s+$&#39;</li>
        <li class="line-miss">		assert.same({</li>
        <li class="line-hit">			&#39;^hack&#47;%%s%+%$$&#39;</li>
        <li class="line-hit">			&#39;^text&#47;html$&#39;</li>
        <li class="line-hit">			&#39;^application&#47;.+&#39;</li>
        <li class="line-hit">			&#39;.+&#47;.+&#39;</li>
        <li class="line-hit">		}, [v.pattern for v in *accepted])</li>
        <li class="line-empty">
</li>
        <li class="line-hit">	describe &quot;picker&quot;, -&gt;</li>
        <li class="line-hit">		before_each -&gt;</li>
        <li class="line-hit">			export picker = arbiter.new(&#39;text&#47;*&#39;)</li>
        <li class="line-hit">		it &quot;picks the preferred type from a sequence of strings&quot;, -&gt;</li>
        <li class="line-miss">			assert.same &quot;text&#47;html&quot;, picker\pick { &quot;application&#47;js&quot;, &quot;text&#47;html&quot;, &quot;image&#47;png&quot; }</li>
        <li class="line-hit">		it &quot;collects loose string parameters into a table&quot;, -&gt;</li>
        <li class="line-hit">			assert.same &quot;text&#47;html&quot;, picker\pick &quot;application&#47;js&quot;, &quot;text&#47;html&quot;, &quot;image&#47;png&quot;</li>
        <li class="line-hit">		it &quot;picks the preferred option from a map of types&quot;, -&gt;</li>
        <li class="line-hit">			available = {</li>
        <li class="line-hit">				[&#39;application&#47;js&#39;]: &quot;BAR&quot;</li>
        <li class="line-hit">				[&#39;text&#47;html&#39;]: &quot;FOO&quot;</li>
        <li class="line-hit">				[&#39;image&#47;png&#39;]: &quot;BAZ&quot;</li>
        <li class="line-empty">			}</li>
        <li class="line-hit">			assert.same {&quot;text&#47;html&quot;, &quot;FOO&quot;}, { picker\pick(available) }</li>
        <li class="line-hit">		it &quot;picks the preferred option from a sequence of tables&quot;, -&gt;</li>
        <li class="line-hit">			available = {</li>
        <li class="line-hit">				{&quot;application&#47;js&quot;, &quot;BAR&quot;}</li>
        <li class="line-hit">				{&quot;text&#47;html&quot;, &quot;FOO&quot;}</li>
        <li class="line-hit">				{&quot;image&#47;png&quot;, &quot;BAZ&quot;}</li>
        <li class="line-hit">			}</li>
        <li class="line-hit">			assert.same {&quot;text&#47;html&quot;, &quot;FOO&quot;}, { picker\pick(available) }</li>
        <li class="line-hit">		it &quot;fails when it cannot negotiate a type&quot;, -&gt;</li>
        <li class="line-miss">			assert.errors -&gt;</li>
        <li class="line-hit">				assert picker\pick &#39;application&#47;js&#39;, &#39;image&#47;png&#39;</li>
    </ul>

  </section>

        </section>
      </main>

      <footer class="quiet">
        Code coverage generated by <a href="https://keplerproject.github.io/luacov/" target="_blank">LuaCov</a> at 2022-12-18 13:58:55
      </footer>
    </div>
  </body>
</html>

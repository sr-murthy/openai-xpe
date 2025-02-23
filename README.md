# openai-xpe

A simple command line tool to run [OpenAI](https://openai.com/) model prompts.

> [!Note]
> You will need an [OpenAI platform API key](https://platform.openai.com/docs/api-reference/authentication) to use this tool.

This README also includes a section showing prompts and responses from OpenAI's [o1-mini model](https://platform.openai.com/docs/models#o1), with some surprising and amusing results.


Installation & Setup
--------------------

1. Assuming you have an [OpenAI platform API key](https://platform.openai.com/docs/api-reference/authentication), export that to your shell environment:
```bash
export OPENAI_API_KEY="<your API key>"
```
2. Clone the repo in the most convenient way: SSH (preferred), or HTTPS.
3. Run `python -m pip install .` to install the repo as a package, which will give you the `openai_prompter` CLI query tool.
4. Run `openai_prompter --help` to check the CLI is available and working:
```bash
$ openai_prompter --help
Usage: openai_prompter [OPTIONS]

  Calls ``get_chat_completion`` to query the model with the
  given prompt and prints the response.

Options:
  --model TEXT   Type of OpenAI model to use  [required]
  --prompt TEXT  Model prompt  [required]
  --help         Show this message and exit.
```

Some Prompts and Responses for the o1-mini
------------------------------------------

The following is a listing of some random prompts to the o1-mini model, and its responses. For brevity, some of the prompts include an instruction to be concise, e.g. "Please keep the answer concise", to encourage the model to be brief.

### 1. Birth and Death Dates of L. v. Beethoven

The prompt:
```bash
$ openai_prompter --model 'o1-mini' --prompt 'When and where was the composer Ludwig van Beethoven born? When and where did he die? Please keep the answer concise.'
```

The response:
```bash
Ludwig van Beethoven was born on December 17, 1770, in Bonn (present-day Germany) and died on March 26, 1827, in Vienna, Austria.
```

### 2. Colour of the Sky

The prompt:
```bash
$ openai_prompter --model 'o1-mini' --prompt 'Why does the sky appear blue? Please keep the answer concise.'
```

The response:
```bash
The sky appears blue because molecules in Earth's atmosphere scatter sunlight. This scattering, known as Rayleigh scattering, is more effective at shorter (blue) wavelengths. As sunlight passes through the atmosphere, the blue light is scattered in all directions, making the sky appear blue to our eyes.
```

### 3. Is Pluto a planet?

The prompt:
```bash
$ openai_prompter --model 'o1-mini' --prompt 'Is Pluto a planet? Explain, but in a concise way'
```

The response:
```bash
No, Pluto is classified as a **dwarf planet**. In 2006, the International Astronomical Union redefined the criteria for planethood, requiring that a celestial body:

1. **Orbits the Sun**
2. **Has sufficient mass for its gravity to make it nearly round**
3. **Has cleared its orbital neighborhood of other debris**

While Pluto meets the first two criteria, it hasn't cleared its orbit of other objects in the Kuiper Belt. Therefore, it doesn't qualify as a full-fledged planet under the current definition.
```

### 4. Intelligent life in the Universe

The prompt:
```bash
$ openai_prompter --model 'o1-mini' --prompt 'Are we alone in the Universe? Please provide a concise summary of the latest findings on intelligent life in the Universe.'
```

The response:
```bash
As of October 2023, there is no confirmed evidence of intelligent extraterrestrial life. Ongoing research efforts continue to explore this possibility through various avenues:

1. **Exoplanet Discoveries**: Thousands of exoplanets have been identified, with a growing number situated in their star's habitable zone where conditions might support life.

2. **SETI Initiatives**: The Search for Extraterrestrial Intelligence (SETI) employs advanced radio telescopes and data analysis techniques to detect potential artificial signals from distant civilizations, but no definitive signals have been found yet.

3. **Biosignature and Technosignature Research**: Scientists are developing methods to identify signs of life or technological activity (biosignatures and technosignatures) in the atmospheres of exoplanets and other celestial bodies.

4. **Astrobiology Missions**: Space missions, such as those to Mars and the icy moons of Jupiter and Saturn, aim to discover microbial life forms or conditions that could support life.

5. **Theoretical Studies**: Researchers continue to explore the Drake Equation and the Fermi Paradox to understand the likelihood and distribution of intelligent life in the universe.

While these efforts advance our understanding and capabilities, the question of whether we are alone in the universe remains unanswered. The search continues, fueled by technological advancements and a deeper understanding of life's potential diversity.
```

### 5. Recipes

The prompt
```bash
$ openai_prompter --model 'o1-mini' --prompt 'Please give me a simple recipe for boiling eggs in under 10 minutes.'
```

The response:
```bash
Certainly! Here's a **simple and quick method** to boil eggs in **under 10 minutes**. This method is perfect for achieving **soft to medium-boiled eggs** with set whites and slightly runny yolks.

### **Quick Boiled Eggs Recipe**

#### **Ingredients:**
- **Eggs** (as many as you need)
- **Water**
- **Ice** (for the ice bath)

#### **Equipment:**
- **Saucepan or pot**
- **Slotted spoon**
- **Bowl**

#### **Instructions:**

1. **Prepare the Eggs:**
   - **Bring eggs to room temperature** to prevent cracking. You can let them sit out for about 10 minutes or run them under warm water for a minute.

2. **Add Eggs to Pot:**
   - Place the eggs in a **single layer** at the bottom of a saucepan or pot. Avoid stacking them to ensure even cooking.

3. **Add Water:**
   - Pour **cold water** into the pot until the eggs are **covered by about 1 inch (2.5 cm)** of water.

4. **Boil the Water:**
   - Place the pot on the **stove over high heat**.
   - Let the water **come to a rolling boil**. This should take about 2-3 minutes depending on your stove and the number of eggs.

5. **Turn Off the Heat:**
   - Once the water is boiling, **quickly turn off the heat** and cover the pot with a **lid**.

6. **Set the Timer:**
   - **For Soft-Boiled Eggs:** Let the eggs sit in the hot water for **6 minutes**.
   - **For Medium-Boiled Eggs:** Let them sit for **7-8 minutes**.
   - **For Slightly Hard-Boiled Eggs:** Let them sit for **9 minutes**.
   
   *Since you're aiming for under 10 minutes, choose the desired firmness accordingly.*

7. **Prepare an Ice Bath:**
   - While the eggs are cooking, fill a **bowl** with **ice and cold water**.

8. **Transfer and Cool:**
   - After the timer goes off, use a **slotted spoon** to carefully transfer the eggs from the hot water to the **ice bath**.
   - Let them sit in the ice bath for **at least 2 minutes**. This stops the cooking process and makes peeling easier.

9. **Peel and Serve:**
   - Gently tap the eggs on a hard surface and **roll them** to crack the shell.
   - Start peeling from the wider end where there's usually an air pocket.
   - Rinse the peeled eggs under cold water to remove any shell fragments.
   
   *Enjoy your perfectly boiled eggs! You can eat them plain, sprinkle with a little salt and pepper, or use them in your favorite recipes.*

#### **Tips:**
- **Fresh vs. Older Eggs:** Slightly older eggs peel more easily than very fresh ones.
- **Peeling Trick:** Peeling the eggs under running water can help remove stubborn shell pieces.
- **Storage:** If not eating immediately, store boiled eggs unpeeled in the refrigerator for up to a week.

#### **Example Timing:**
- **Boiling Time:** 3 minutes (to reach a rolling boil) + 6-9 minutes (resting time) = **9-12 minutes total**
  
  To strictly keep it under 10 minutes, opt for:
  
  - **Bring to Boil:** 3 minutes
  - **Resting Time:** 6 minutes (for soft to medium-boiled)

Enjoy your quick and easy boiled eggs!
```

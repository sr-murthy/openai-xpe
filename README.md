# openai-xpe

A simple command line tool to run [OpenAI](https://openai.com/) model prompts.

> [!Note]
> You will need an [OpenAI platform API key](https://platform.openai.com/docs/api-reference/authentication) to use this tool.

This README also includes a section showing prompts and responses from OpenAI's [o1-mini model](https://platform.openai.com/docs/models#o1), ending with a personal evaluation.

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

The following is a listing of some random prompts to the o1-mini model, and its responses, formatted for readability. For brevity, some of the prompts include an instruction to be concise, e.g. "Please keep the answer concise", to encourage the model to be brief.

### 1. Beethoven's Birth and Death Dates

The prompt:
> When and where was the composer Ludwig van Beethoven born? When and where did he die? Please keep the answer concise.

The response:
> Ludwig van Beethoven was born on December 17, 1770, in Bonn (present-day Germany) and died on March 26, 1827, in Vienna, Austria.

### 2. Colour of the Sky

The prompt:
> Why does the sky appear blue? Please keep the answer concise.

The response:
> The sky appears blue because molecules in Earth's atmosphere scatter sunlight. This scattering, known as Rayleigh scattering, is more effective at shorter (blue) wavelengths. As sunlight passes through the atmosphere, the blue light is scattered in all directions, making the sky appear blue to our eyes.

### 3. Is Pluto a planet?

The prompt:
> Is Pluto a planet? Explain, but in a concise way'

The response:
> No, Pluto is classified as a **dwarf planet**. In 2006, the International Astronomical Union redefined the criteria for planethood, requiring that a celestial body:
>
> 1. **Orbits the Sun**
> 2. **Has sufficient mass for its gravity to make it nearly round**
> 3. **Has cleared its orbital neighborhood of other debris**
>
>While Pluto meets the first two criteria, it hasn't cleared its orbit of other objects in the Kuiper Belt. Therefore, it doesn't qualify as a full-fledged planet under the current definition.

### 4. Intelligent life in the Universe

The prompt:
> Are we alone in the Universe? Please provide a concise summary of the latest findings on intelligent life in the Universe.

The response:
> As of October 2023, there is no confirmed evidence of intelligent extraterrestrial life. Ongoing research efforts continue to explore this possibility through various avenues:
>
> 1. **Exoplanet Discoveries**: Thousands of exoplanets have been identified, with a growing number situated in their star's habitable zone where conditions might support life.
>
> 2. **SETI Initiatives**: The Search for Extraterrestrial Intelligence (SETI) employs advanced radio telescopes and data analysis techniques to detect potential artificial signals from distant civilizations, but no definitive signals have been found yet.
>
> 3. **Biosignature and Technosignature Research**: Scientists are developing methods to identify signs of life or technological activity (biosignatures and technosignatures) in the atmospheres of exoplanets and other celestial bodies.
>
> 4. **Astrobiology Missions**: Space missions, such as those to Mars and the icy moons of Jupiter and Saturn, aim to discover microbial life forms or conditions that could support life.
>
> 5. **Theoretical Studies**: Researchers continue to explore the Drake Equation and the Fermi Paradox to understand the likelihood and distribution of intelligent life in the universe.
>
> While these efforts advance our understanding and capabilities, the question of whether we are alone in the universe remains unanswered. The search continues, fueled by technological advancements and a deeper understanding of life's potential diversity.

### 5. A Quick Recipe for Boiled Eggs

The prompt:
> Please give me a simple recipe for boiling eggs in under 10 minutes.

The response:
> Certainly! Here's a **simple and quick method** to boil eggs in **under 10 minutes**. This method is perfect for achieving **soft to medium-boiled eggs** with set whites and slightly runny yolks.
>
> ### **Quick Boiled Eggs Recipe**
>
> #### **Ingredients:**
> - **Eggs** (as many as you need)
> - **Water**
> - **Ice** (for the ice bath)
>
> #### **Equipment:**
> - **Saucepan or pot**
> - **Slotted spoon**
> - **Bowl**
>
> #### **Instructions:**
> 
> 1. **Prepare the Eggs:**
   > - **Bring eggs to room temperature** to prevent cracking. You can let them sit out for about 10 minutes or run them under warm water for a minute.
> 
> 2. **Add Eggs to Pot:**
   > - Place the eggs in a **single layer** at the bottom of a saucepan or pot. Avoid stacking them to ensure even cooking.
> 
> 3. **Add Water:**
   > - Pour **cold water** into the pot until the eggs are **covered by about 1 inch (2.5 cm)** of water.
> 
> 4. **Boil the Water:**
   > - Place the pot on the **stove over high heat**.
   > - Let the water **come to a rolling boil**. This should take about 2-3 minutes depending on your stove and the number of eggs.
> 
> 5. **Turn Off the Heat:**
   > - Once the water is boiling, **quickly turn off the heat** and cover the pot with a **lid**.
> 
> 6. **Set the Timer:**
   > - **For Soft-Boiled Eggs:** Let the eggs sit in the hot water for **6 minutes**.
   > - **For Medium-Boiled Eggs:** Let them sit for **7-8 minutes**.
   > - **For Slightly Hard-Boiled Eggs:** Let them sit for **9 minutes**.
   > 
   > *Since you're aiming for under 10 minutes, choose the desired firmness accordingly.*
> 
> 7. **Prepare an Ice Bath:**
   > - While the eggs are cooking, fill a **bowl** with **ice and cold water**.
> 
> 8. **Transfer and Cool:**
   > - After the timer goes off, use a **slotted spoon** to carefully transfer the eggs from the hot water to the **ice bath**.
   > - Let them sit in the ice bath for **at least 2 minutes**. This stops the cooking process and makes peeling easier.
> 
> 9. **Peel and Serve:**
  >  - Gently tap the eggs on a hard surface and **roll them** to crack the shell.
  >  - Start peeling from the wider end where there's usually an air pocket.
  >  - Rinse the peeled eggs under cold water to remove any shell fragments.
  > 
  >  *Enjoy your perfectly boiled eggs! You can eat them plain, sprinkle with a little salt and pepper, or use them in your favorite recipes.*
> 
> #### **Tips:**
> - **Fresh vs. Older Eggs:** Slightly older eggs peel more easily than very fresh ones.
> - **Peeling Trick:** Peeling the eggs under running water can help remove stubborn shell pieces.
> - **Storage:** If not eating immediately, store boiled eggs unpeeled in the refrigerator for up to a week.
> 
> #### **Example Timing:**
> - **Boiling Time:** 3 minutes (to reach a rolling boil) + 6-9 minutes (resting time) = **9-12 minutes total**
>   
>   To strictly keep it under 10 minutes, opt for:
>   
>   - **Bring to Boil:** 3 minutes
>   - **Resting Time:** 6 minutes (for soft to medium-boiled)
> 
> Enjoy your quick and easy boiled eggs!

### 6. Python Implementation of the Quicksort Algorithm

The prompt:
> Please provide a concise and typed Python implementation of the quicksort algorithm for sorting numbers. Please include docstrings and comments in the code, but omit explanations and notes.

The response:
```python
from typing import List
from numbers import Number

def quicksort(arr: List[Number]) -> List[Number]:
    """
    Sorts a list of numbers using the quicksort algorithm.

    Args:
        arr (List[Number]): The list of numbers to sort.

    Returns:
        List[Number]: A new sorted list.
    """
    if len(arr) <= 1:
        return arr  # Base case: a list of zero or one elements is already sorted

    pivot = arr[len(arr) // 2]  # Choose the middle element as pivot
    left = [x for x in arr if x < pivot]    # Elements less than pivot
    middle = [x for x in arr if x == pivot] # Elements equal to pivot
    right = [x for x in arr if x > pivot]   # Elements greater than pivot

    # Recursively apply quicksort to left and right partitions and concatenate
    return quicksort(left) + middle + quicksort(right)
```

### 7. Beethoven's Politics

The prompt:
> Beethoven is said to have withdrawn the original dedication of his 3rd symphony, known as 'The Eroica', to Napoleon, in a rage, after hearing about his self-proclamation as Emperor. Was this genuinely because he was a democratic anti-imperialist, motivated by feelings of universal egalitarism, or was it simply a fit of private anger motivated by jealousy? What were his real views on democracy, monarchy and imperialism, given that throughout much of his life and career he enjoyed a high level of aristocratic and royal patronage and interest? Please be concise in your answer."

The response:
> Beethoven’s decision to withdraw the dedication of his "Eroica" Symphony from Napoleon stemmed primarily from his profound disappointment and disillusionment when Napoleon declared himself Emperor, betraying the revolutionary ideals Beethoven had admired. While this act suggests Beethoven valued republican and egalitarian principles, his motivations were likely a mix of idealistic support for democratic ideals and personal emotional response rather than mere jealousy.
>
> Regarding his broader views, Beethoven held progressive ideas for his time, appreciating concepts of personal freedom and equality. However, he navigated a society dominated by aristocratic and royal patronage, which he depended on for his career. This pragmatic reliance did not necessarily contradict his ideals but reflected the complexities artists faced in balancing personal beliefs with societal structures. Thus, Beethoven’s actions indicate a genuine respect for democratic ideals coupled with the practical necessities of his era.

### 8. The Universe as a Simulation

The prompt:
> Do we live in a simulation, and if so, why and how? Please explain concisely.


The response:
> The idea that we might be living in a simulation is a philosophical and scientific hypothesis known as the **simulation hypothesis**. Here's a concise overview:
>
> ### **Why We Might Be in a Simulation**
> 1. **Advancements in Technology**: As technology progresses, especially in computing and virtual reality, it's conceivable that future civilizations could create highly detailed simulations indistinguishable from reality.
> 2. **Statistical Argument**: Philosopher Nick Bostrom proposed that at least one of the following statements is likely true:
>    - Human civilization is unlikely to reach a level of technology where simulations are possible.
>    - Such civilizations choose not to run simulations.
>    - We are almost certainly living in a simulation.
>    
>    If future civilizations do run many simulations, the number of simulated realities could vastly outnumber the original "base" reality, making it statistically probable that we are in a simulation.
> 
> ### **How It Might Work**
> - **Computational Power**: A sufficiently advanced computer could simulate consciousness and the physical universe at a fundamental level, including all the laws of physics and the experiences of individuals.
> - **Layered Realities**: Our universe could be one layer within many, each simulated by higher-level realities, much like characters in a sophisticated video game unaware of their programming.
> 
> ### **Current Perspective**
> - **Lack of Evidence**: There is no empirical evidence supporting the simulation hypothesis. It remains a speculative idea without testable predictions.
> - **Philosophical Debate**: The hypothesis raises questions about reality, consciousness, and existence but doesn't currently impact our understanding of the physical world in a practical sense.
> 
> ### **Conclusion**
> While the simulation hypothesis is a fascinating concept that explores the nature of reality and our place within it, it remains a speculative theory without concrete evidence. It serves more as a thought experiment prompting discussions about technology, consciousness, and the future of civilizations.

### 9. Habermas's Theory of Communicative Action

The prompt:
> Concisely explain the philosopher Juergen Habermas's theory of communicative action. How is it relevant to the problems or failures of modern democracies?

The response:
> Jürgen Habermas's **Theory of Communicative Action** is a foundational framework in social theory and philosophy that emphasizes the role of communication in achieving mutual understanding and coordination among individuals. Published in his seminal work *"The Theory of Communicative Action"* (1981), Habermas distinguishes between two types of actions:
> 
> 1. **Instrumental (Strategic) Action:** Actions driven by individual goals, where participants aim to influence others to achieve their own interests.
> 2. **Communicative Action:** Interactions aimed at reaching mutual understanding and agreement through dialogue, where participants engage rationally and openly to coordinate actions based on shared norms and values.
> 
> Habermas argues that in a well-functioning society, communicative action forms the basis for social integration and democratic deliberation. He introduces the concept of the "public sphere," a space where individuals can freely discuss and debate issues, leading to consensus and legitimate decision-making.
> 
> **Relevance to Modern Democracies:**
> 
> Habermas's theory is highly pertinent to the challenges faced by contemporary democracies in several ways:
> 
> 1. **Erosion of the Public Sphere:** In modern democracies, the public sphere has been fragmented by mass media, digital platforms, and partisan echo chambers, reducing opportunities for genuine communicative action and rational deliberation.
> 
> 2. **Rise of Strategic Communication:** Political discourse often shifts from seeking consensus to strategic maneuvering, where parties prioritize winning over mutual understanding, leading to increased polarization and mistrust.
> 
> 3. **Manipulation and Misinformation:** The spread of misinformation and targeted propaganda undermines the quality of communication, making it difficult to achieve informed consensus essential for democratic legitimacy.
> 
> 4. **Decline in Civic Engagement:** Reduced participation in public debates and weakening of community ties impede the collaborative dialogue necessary for addressing common societal issues.
> 
> 5. **Institutional Barriers:** Bureaucratic and institutional complexities can stifle open communication and limit avenues for inclusive dialogue, hindering effective democratic participation.
> 
> By highlighting these issues, Habermas's theory underscores the importance of fostering environments that prioritize open, rational, and inclusive communication. Addressing the deficiencies in communicative action can strengthen democratic processes, enhance legitimacy, and promote more resilient and cohesive societies.Evaluation

### 10. Animals as Ethical Beings

The prompt:
> Can animals feel pain, fear and anxiety, in any degree, comparable to humans? If so, concisely explain whether they are ethical beings, and, if so, should they have social and political rights? Why do they not have such rights?"

The response:
> Yes, scientific research has shown that many animals can experience pain, fear, and anxiety in ways comparable to humans, indicating they are sentient beings. Recognizing their sentience suggests that animals hold inherent ethical value, which has led some to argue for granting them certain social and political rights to ensure their welfare and protection. However, animals generally do not possess such rights widely because of factors like differing cognitive abilities, anthropocentric societal frameworks, and existing legal systems that prioritize human interests. Additionally, extending comprehensive rights to animals involves complex ethical, practical, and legal considerations that society continues to explore and debate.

Personal Evaluation
-------------------
Overall, the responses show a difference in quality in relation to the nature of the prompt questions: responses to factual, algorithmic, physical science questions are more satisfactory than responses to subjective, political or moral questions, where there is a lack of insight, detail, and a good deal of regurgitation of facts and phrases from the questions themselves.

On a more general note, any comparison between human thinking and the current generation of AI models is deeply flawed: the AI models are based on a design paradigm in which the human mind is a statistical pattern recognition machine, which I do not believe to be the case. I believe the human thinking is far more subtle, capable of grasping patterns through understanding of cause and effect, and insight, rather than correlation, and is therefore much more efficient. It is also more creative in ways that the AI models cannot even begin to approach. And unlike human beings AI models do not have organic consciousness, and therefore, in their current form, cannot have a true sense of morality.

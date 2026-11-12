# Lab 08: Knowledge check

## 1. Slurm: what jobs have I submitted?

**Your answer:**

I would use the following command to display my Slurm job history since November 4, 2026, including the requested job information.

```bash
sacct --starttime=2026-11-04 --user="$USER" --format=JobID,JobName,NodeList,Partition,Account,User,State,Start,Elapsed --parsable2 > results/job-history.txt
cat > KNOWLEDGE_CHECK.md <<'EOF'
# Lab 08: Knowledge check

## 1. Slurm: what jobs have I submitted?

**Your answer:**

I would use the following command to display my Slurm job history since November 4, 2026, including the requested job information.

```bash
sacct --starttime=2026-11-04 --user="$USER" --format=JobID,JobName,NodeList,Partition,Account,User,State,Start,Elapsed --parsable2 > results/job-history.tx                                                                                     ## 2. Slurm: did every array task run at the same time?

**Your answer:**

In this hypothetical example, the array tasks did not all start at the same time. Their elapsed times were also different because Slurm scheduled tasks as resources became available and each book required a different amount of processing time.

## 3. Slurm: did my job use what it asked for?

**Your answer:**

In this hypothetical example, the task used 3 GB of memory out of the 16 GB requested and ran for 2 minutes and 11 seconds out of the 5-minute time limit. I would test more tasks before lowering the memory or time limits because a larger array of 1,000 books could include books that require more resources.EOF

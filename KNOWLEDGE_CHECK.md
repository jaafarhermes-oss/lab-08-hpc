# Lab 08: Knowledge check

## 1. Slurm: what jobs have I submitted?

**Your answer:**

I would use the following command to display my Slurm job history since November 4, 2026, including job IDs, job names, nodes, partitions, accounts, states, start times, and elapsed times.

```bash
sacct --starttime=2026-11-04 --user="$USER" --format=JobID,JobName,NodeList,Partition,Account,User,State,Start,Elapsed --parsable2
The sample job history shows three array tasks associated with job 987654.
2. Slurm: did every array task run at the same time?
Your answer:

In this hypothetical example, the array tasks did not all start at the same time. Task 1 started at 14:00, task 2 started at 14:01:15, and task 3 started at 14:02. Slurm schedules array tasks as resources become available, so submitting them together does not guarantee that they start together.
3. Slurm: did my job use what it asked for?
Your answer:

In this hypothetical example, the task used 3 GB of memory out of the 16 GB requested. It ran for 2 minutes and 11 seconds out of the 5-minute time limit. I would test more tasks before lowering the resource requests because different books may require different amounts of processing time.

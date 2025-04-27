# 📚 Priority Arbiter
## 🛠 Description
A Priority Arbiter is a digital circuit that decides which among multiple requesters gets access to a shared resource based on a fixed priority order.
In this design:

port[0] has the highest priority.

When multiple requests are active at the same time, the lowest numbered port (req_i[0]) is granted first.

## 🧩 SystemVerilog Code
- Module Name: day14
- Parameter: NUM_PORTS → Configurable number of requesters.
- Inputs: req_i -> Request signals.
- Outputs: gnt_o -> Grant signals (only one grant at a time based on priority).


```systemverilog
// Priority arbiter
// port[0] - highest priority

module day14 #(
    parameter int NUM_PORTS = 4 // Number of requesters
) (
  input  logic [NUM_PORTS-1:0] req_i,    // Request signals
  output logic [NUM_PORTS-1:0] gnt_o     // Grant signals
);

    always_comb begin
        gnt_o = '0; // Default: no grants
        for (int i = 0; i < NUM_PORTS; i++) begin
          if (req_i[i] & gnt_o == 0) begin
              gnt_o[i] = 1'b1;
          end
        end
    end

endmodule
```

🧪 Testbench
Simple randomized testbench that generates random requests and monitors grants.

```systemverilog
module day14_tb ();

  localparam NUM_PORTS = 4;

  logic clk;
  logic reset;
  logic[NUM_PORTS-1:0] req_i;
  logic[NUM_PORTS-1:0] gnt_o;

  day14 #(NUM_PORTS) DAY14 (.*);

  initial begin
    for (int i=0; i<32; i=i+1) begin
      req_i = $urandom_range(0, 2**NUM_PORTS-1);
      #5;
    end
  end

endmodule
```



## 💡 Applications of Priority Arbiters

| Area                  | Usage                                                  |
|------------------------|--------------------------------------------------------|
| CPU Cache Controllers  | Arbitration between multiple cores accessing a shared cache |
| Bus Protocols (e.g., AMBA, AXI) | Master selection on shared buses                  |
| Memory Access Management | Choosing which module can read/write RAM              |
| DMA Controllers        | Handling multiple device access to main memory         |
| IO Subsystems          | Arbitration between peripherals needing CPU attention  |


## 🏢 Use in Industry
- SoC Design: Arbitration between multiple modules (CPUs, DSPs, accelerators).
- Networking Hardware: Packet scheduling and buffer management.
- Graphics Chips (GPU): Resource sharing between shader engines.
- Memory Controllers: Managing concurrent accesses from CPU and peripherals.
- Embedded Systems: Lightweight arbitration logic where real-time response is critical.

## ⚙️ Key Features
- Fixed Priority: Always favors the highest priority requester.
- Parameterizable: Easily scalable to different numbers of ports.
- Synthesizable: Fully compliant with hardware synthesis tools.
- Simple Logic: Low area overhead.

## ⚠️ Drawbacks of Fixed Priority Arbiters

|Drawback| Details|
|--------|--------|
|Starvation| Lower priority requesters might never get service if higher ones are always active.|
|Scalability|	For very large N, combinational paths grow longer (longer delay).|
|Static Priority|	Priority cannot change dynamically unless additional logic is added.|
|Load Imbalance|	High-priority requesters might get overused, affecting system fairness.|

### 🛠️ Improvements (Optional Enhancements)
- Round-Robin Arbitration: To prevent starvation.
- Dynamic Priority Updating: Change priorities based on system state.
- Timeout-based Fairness: Grant lower priority after timeout expiration.

## ✨ Additional Notes
- Priority arbiters are often wrapped inside bigger arbitration systems for quality-of-service (QoS) management.
- In high-performance chips, careful optimization of arbiter paths is needed to meet timing closure (especially at 1GHz+ designs).
- Low-power designs might use clock gating techniques inside the arbiter.


### 🔗 Author
Contributed by Suresh G Kini ✨

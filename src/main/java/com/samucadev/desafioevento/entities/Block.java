package com.samucadev.desafioevento.entities;

import jakarta.persistence.*;

import java.time.Instant;

@Entity
@Table(name = "tb_block")
public class Block {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
    private Instant instant_begin;

    @Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
    private Instant instant_end;

    @ManyToOne
    @JoinColumn(name = "activity_id")
    private Activity activity;

    public Block() {
    }

    public Block(Integer id, Instant instant_begin, Instant instant_end, Activity activity) {
        this.id = id;
        this.instant_begin = instant_begin;
        this.instant_end = instant_end;
        this.activity = activity;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Instant getInstant_begin() {
        return instant_begin;
    }

    public void setInstant_begin(Instant instant_begin) {
        this.instant_begin = instant_begin;
    }

    public Instant getInstant_end() {
        return instant_end;
    }

    public void setInstant_end(Instant instant_end) {
        this.instant_end = instant_end;
    }

    public Activity getActivity() {
        return activity;
    }

    public void setActivity(Activity activity) {
        this.activity = activity;
    }
}

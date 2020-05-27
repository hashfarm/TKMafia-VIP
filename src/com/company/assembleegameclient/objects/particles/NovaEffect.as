package com.company.assembleegameclient.objects.particles {
import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.parameters.Parameters;

import flash.geom.Point;

public class NovaEffect extends ParticleEffect {


    public function NovaEffect(go:GameObject, radius:Number, color:int) {
        super();
        this.start_ = new Point(go.x_, go.y_);
        this.novaRadius_ = radius;
        this.color_ = color;
    }
    public var start_:Point;
    public var novaRadius_:Number;
    public var color_:int;

    override public function update(time:int, dt:int):Boolean {
        var angle:Number = NaN;
        var p:Point = null;
        var part:Particle = null;
        x_ = this.start_.x;
        y_ = this.start_.y;
        var SIZE:int = 10;
        var LIFETIME:int = 200;
        var numPoints:int = 4 + this.novaRadius_ * 2;
        switch (Parameters.data.reduceParticles) {
            case 2:
                numPoints = 4 + this.novaRadius_ * 2;
                break;
            case 1:
                numPoints = this.novaRadius_ * 2;
                break;
            case 0:
                numPoints = this.novaRadius_;
        }
        for (var i:int = 0; i < numPoints; i++) {
            angle = i * 2 * Math.PI / numPoints;
            p = new Point(this.start_.x + this.novaRadius_ * Math.cos(angle), this.start_.y + this.novaRadius_ * Math.sin(angle));
            part = new SparkerParticle(SIZE, this.color_, LIFETIME, this.start_, p);
            map_.addObj(part, x_, y_);
        }
        return false;
    }
}
}

package net.bigpoint.particles
{
   import flash.utils.getTimer;
   import flash.utils.setInterval;
   
   public class ParticleSystem
   {
      
      private var particlePool:Vector.<Particle> = new Vector.<Particle>();
      
      private var emitter:Vector.<ParticleEmitter> = new Vector.<ParticleEmitter>();
      
      private var oldTime:int = getTimer();
      
      private var currentTime:int;
      
      private var elapsedSeconds:Number;
      
      private var currentEmitterIndex:uint;
      
      private var numberOfEmitters:uint;
      
      private var currentEmitter:ParticleEmitter;
      
      private var numberOfNewParticles:Number = 0;
      
      private var numberOfWholeNewParticles:uint = 0;
      
      private var inactiveParticles:int = 0;
      
      private var currentParticle:Particle;
      
      private var _cleanPoolDelay:int = 90;
      
      private var _potentialCleanUpdates:int = 0;
      
      private var _timerId:uint = 0;
      
      public function ParticleSystem()
      {
         super();
      }
      
      public function purge() : void
      {
         var _loc3_:uint = 0;
         var _loc1_:uint = this.particlePool.length;
         var _loc2_:Vector.<Particle> = new Vector.<Particle>(_loc1_);
         _loc3_ = 0;
         while(_loc3_ < _loc1_)
         {
            if(this.particlePool[_loc3_].active)
            {
               _loc2_[0] = this.particlePool[_loc3_];
               var _loc4_:uint = uint(0 + 1);
            }
            _loc3_++;
         }
         _loc2_.length = 0;
         this.particlePool = _loc2_;
         this.inactiveParticles = 0;
         if(this.particlePool.length == 0)
         {
            this._timerId = 0;
         }
      }
      
      private function update() : void
      {
         this.currentTime = getTimer();
         this.elapsedSeconds = Number(this.currentTime - this.oldTime) / 1000;
         this.currentEmitterIndex = 0;
         this.numberOfEmitters = this.emitter.length;
         this.currentEmitter = this.numberOfEmitters == 0 ? null : this.emitter[this.currentEmitterIndex];
         this.numberOfNewParticles = 0;
         this.numberOfWholeNewParticles = 0;
         if(this.currentEmitter)
         {
            this.numberOfNewParticles = this.currentEmitter.newParticlesPerSecond * this.elapsedSeconds + this.currentEmitter.rest;
            this.numberOfWholeNewParticles = uint(this.numberOfNewParticles);
            this.currentEmitter.rest = this.numberOfNewParticles - this.numberOfWholeNewParticles;
         }
         var _loc1_:uint = this.particlePool.length;
         var _loc2_:uint = 0;
         while(_loc2_ < _loc1_)
         {
            this.currentParticle = this.particlePool[_loc2_];
            if(this.currentParticle.active)
            {
               if(this.currentParticle.birthTime + this.currentParticle.lifeTime < this.currentTime)
               {
                  this.currentParticle.active = false;
                  this.currentParticle.emitter = null;
                  this.currentParticle.bitmapData = null;
                  this.currentParticle.parent.removeChild(this.currentParticle);
                  ++this.inactiveParticles;
               }
               else
               {
                  this.currentParticle.emitter.updateParticle(this.currentParticle,this.elapsedSeconds,this.currentTime);
               }
            }
            if(!this.currentParticle.active)
            {
               if(this.numberOfWholeNewParticles > 0)
               {
                  this.initializeParticle();
                  --this.inactiveParticles;
               }
               if(this.numberOfWholeNewParticles == 0)
               {
                  this.gotoNextEmitter();
               }
            }
            _loc2_++;
         }
         do
         {
            if(this.numberOfWholeNewParticles > 0)
            {
               this.initializeParticle(true);
            }
            if(this.numberOfWholeNewParticles == 0)
            {
               this.gotoNextEmitter();
            }
         }
         while(this.numberOfWholeNewParticles > 0);
         
         var _loc3_:Number = Number(this.inactiveParticles) / Number(this.particlePool.length);
         if(_loc3_ > 0.3)
         {
            ++this._potentialCleanUpdates;
            if(this._potentialCleanUpdates >= this._cleanPoolDelay)
            {
               this.purge();
            }
         }
         else
         {
            this._potentialCleanUpdates = 0;
         }
         this.oldTime = this.currentTime;
      }
      
      public function addEmitter(param1:ParticleEmitter) : void
      {
         var _loc2_:int = int(this.emitter.indexOf(param1));
         if(_loc2_ != -1)
         {
            return;
         }
         this.emitter.push(param1);
         this.oldTime = getTimer();
         if(this._timerId == 0)
         {
            this._timerId = 1;
            setInterval(this.update,1);
         }
      }
      
      public function removeEmitter(param1:ParticleEmitter) : void
      {
         var _loc2_:int = int(this.emitter.indexOf(param1));
         if(_loc2_ == -1)
         {
            return;
         }
         this.emitter.splice(_loc2_,1);
      }
      
      private function gotoNextEmitter() : void
      {
         ++this.currentEmitterIndex;
         this.currentEmitter = this.currentEmitterIndex < this.numberOfEmitters ? this.emitter[this.currentEmitterIndex] : null;
         this.numberOfNewParticles = 0;
         this.numberOfWholeNewParticles = 0;
         if(this.currentEmitter)
         {
            this.numberOfNewParticles = this.currentEmitter.newParticlesPerSecond * this.elapsedSeconds + this.currentEmitter.rest;
            this.numberOfWholeNewParticles = uint(this.numberOfNewParticles);
            this.currentEmitter.rest = this.numberOfNewParticles - this.numberOfWholeNewParticles;
         }
      }
      
      private function initializeParticle(param1:Boolean = false) : void
      {
         if(param1)
         {
            this.currentParticle = new Particle();
            this.particlePool.push(this.currentParticle);
         }
         this.currentEmitter.initializeParticle(this.currentParticle,this.currentTime);
         --this.numberOfWholeNewParticles;
      }
   }
}


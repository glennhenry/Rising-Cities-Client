package net.bigpoint.particles.particle
{
   import net.bigpoint.particles.Particle;
   import net.bigpoint.particles.ParticleEmitter;
   
   public class ParticleAlphaFade implements IParticleUpdater, IParticleInitializer
   {
      
      private var _startTime:Number;
      
      private var _endTime:Number;
      
      private var _startAlpha:Number;
      
      private var _endAlpha:Number;
      
      public function ParticleAlphaFade(param1:int, param2:int, param3:Number = 1, param4:Number = 0)
      {
         super();
         this._startTime = param1;
         this._endTime = param2;
         this._startAlpha = param3;
         this._endAlpha = param4;
      }
      
      public function updateParticle(param1:ParticleEmitter, param2:Particle, param3:Number, param4:int) : void
      {
         var _loc5_:Number = Number(param4 - param2.birthTime - this._startTime) / Number(this._endTime - this._startTime);
         param2.alpha = this._startAlpha - (this._startAlpha - this._endAlpha) * _loc5_;
      }
      
      public function initializeParticle(param1:ParticleEmitter, param2:Particle, param3:int) : void
      {
         if(this._startTime == 0)
         {
            param2.alpha = this._startAlpha;
         }
      }
      
      public function destroy() : void
      {
      }
   }
}


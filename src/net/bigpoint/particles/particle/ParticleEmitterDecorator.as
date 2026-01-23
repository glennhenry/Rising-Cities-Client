package net.bigpoint.particles.particle
{
   import net.bigpoint.particles.Particle;
   import net.bigpoint.particles.ParticleEmitter;
   
   public class ParticleEmitterDecorator extends ParticleEmitter
   {
      
      private var _updater:Vector.<IParticleUpdater>;
      
      private var _initializer:Vector.<IParticleInitializer>;
      
      public function ParticleEmitterDecorator()
      {
         super();
         this._updater = new Vector.<IParticleUpdater>();
         this._initializer = new Vector.<IParticleInitializer>();
      }
      
      public function addUpdater(param1:IParticleUpdater) : void
      {
         if(this._updater.indexOf(param1) == -1)
         {
            this._updater.push(param1);
         }
      }
      
      public function removeUpdater(param1:IParticleUpdater) : void
      {
         var _loc2_:int = int(this._updater.indexOf(param1));
         if(this._updater.indexOf(param1) != -1)
         {
            this._updater.splice(_loc2_,1);
         }
      }
      
      public function addInitializer(param1:IParticleInitializer) : void
      {
         if(this._initializer.indexOf(param1) == -1)
         {
            this._initializer.push(param1);
         }
      }
      
      public function removeInitializer(param1:IParticleInitializer) : void
      {
         var _loc2_:int = int(this._initializer.indexOf(param1));
         if(this._initializer.indexOf(param1) != -1)
         {
            this._initializer.splice(_loc2_,1);
         }
      }
      
      override public function updateParticle(param1:Particle, param2:Number, param3:int) : void
      {
         var _loc4_:IParticleUpdater = null;
         super.updateParticle(param1,param2,param3);
         for each(_loc4_ in this._updater)
         {
            _loc4_.updateParticle(this,param1,param2,param3);
         }
      }
      
      override public function initializeParticle(param1:Particle, param2:int) : void
      {
         var _loc3_:IParticleInitializer = null;
         super.initializeParticle(param1,param2);
         param1.filters = new Array();
         for each(_loc3_ in this._initializer)
         {
            _loc3_.initializeParticle(this,param1,param2);
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:IParticleInitializer = null;
         var _loc2_:IParticleUpdater = null;
         for each(_loc1_ in this._initializer)
         {
            _loc1_.destroy();
         }
         for each(_loc2_ in this._updater)
         {
            _loc2_.destroy();
         }
      }
   }
}


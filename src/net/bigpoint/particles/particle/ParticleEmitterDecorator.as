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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
            if(_loc1_ || Boolean(this))
            {
               this._updater = new Vector.<IParticleUpdater>();
               if(_loc1_ || Boolean(this))
               {
                  addr005d:
                  this._initializer = new Vector.<IParticleInitializer>();
               }
               §§goto(addr006c);
            }
            §§goto(addr005d);
         }
         addr006c:
      }
      
      public function addUpdater(param1:IParticleUpdater) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(this._updater.indexOf(param1) == -1)
            {
               if(_loc3_ || _loc2_)
               {
                  this._updater.push(param1);
               }
            }
         }
      }
      
      public function removeUpdater(param1:IParticleUpdater) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:int = int(this._updater.indexOf(param1));
         if(!_loc4_)
         {
            if(this._updater.indexOf(param1) != -1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._updater.splice(_loc2_,1);
               }
            }
         }
      }
      
      public function addInitializer(param1:IParticleInitializer) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            if(this._initializer.indexOf(param1) == -1)
            {
               if(_loc2_)
               {
                  addr0040:
                  this._initializer.push(param1);
               }
            }
            return;
         }
         §§goto(addr0040);
      }
      
      public function removeInitializer(param1:IParticleInitializer) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:int = int(this._initializer.indexOf(param1));
         if(_loc3_ || Boolean(this))
         {
            if(this._initializer.indexOf(param1) != -1)
            {
               if(!_loc4_)
               {
                  addr004d:
                  this._initializer.splice(_loc2_,1);
               }
            }
            return;
         }
         §§goto(addr004d);
      }
      
      override public function updateParticle(param1:Particle, param2:Number, param3:int) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:IParticleUpdater = null;
         if(!(_loc8_ && Boolean(param1)))
         {
            super.updateParticle(param1,param2,param3);
         }
         for each(_loc4_ in this._updater)
         {
            _loc4_.updateParticle(this,param1,param2,param3);
         }
      }
      
      override public function initializeParticle(param1:Particle, param2:int) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:IParticleInitializer = null;
         if(!_loc6_)
         {
            super.initializeParticle(param1,param2);
            if(_loc7_)
            {
               param1.filters = new Array();
            }
         }
         for each(_loc3_ in this._initializer)
         {
            if(_loc7_ || Boolean(_loc3_))
            {
               _loc3_.initializeParticle(this,param1,param2);
            }
         }
      }
      
      public function destroy() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc1_:IParticleInitializer = null;
         var _loc2_:IParticleUpdater = null;
         var _loc3_:int = 0;
         var _loc4_:* = this._initializer;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc4_,_loc3_));
            if(_loc5_ && Boolean(_loc3_))
            {
               break;
            }
            if(§§pop())
            {
               _loc1_ = §§nextvalue(_loc3_,_loc4_);
               if(!(_loc5_ && Boolean(_loc2_)))
               {
                  _loc1_.destroy();
               }
               continue;
            }
            if(!(_loc5_ && Boolean(this)))
            {
               if(!_loc5_)
               {
                  if(_loc6_)
                  {
                     _loc3_ = 0;
                     if(_loc6_)
                     {
                        addr00a0:
                        _loc4_ = this._updater;
                        while(true)
                        {
                           §§push(§§hasnext(_loc4_,_loc3_));
                           break loop0;
                        }
                        addr00c7:
                        addr00c0:
                     }
                  }
                  return;
               }
               §§goto(addr00a0);
            }
            §§goto(addr00c7);
         }
         while(§§pop())
         {
            _loc2_ = §§nextvalue(_loc3_,_loc4_);
            if(!_loc5_)
            {
               _loc2_.destroy();
            }
            §§goto(addr00c0);
         }
         §§goto(addr00c7);
      }
   }
}


package net.bigpoint.particles
{
   import flash.utils.getTimer;
   import flash.utils.setInterval;
   
   public class ParticleSystem
   {
      
      private var particlePool:Vector.<Particle>;
      
      private var emitter:Vector.<ParticleEmitter>;
      
      private var oldTime:int;
      
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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this.particlePool = new Vector.<Particle>();
            if(!_loc1_)
            {
               this.emitter = new Vector.<ParticleEmitter>();
               if(!(_loc1_ && _loc2_))
               {
                  addr0062:
                  this.oldTime = getTimer();
                  if(!(_loc1_ && Boolean(this)))
                  {
                     super();
                  }
               }
            }
            return;
         }
         §§goto(addr0062);
      }
      
      public function purge() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:* = 0;
         var _loc1_:uint = this.particlePool.length;
         var _loc2_:Vector.<Particle> = new Vector.<Particle>(_loc1_);
         var _loc4_:* = 0;
         if(!(_loc6_ && Boolean(_loc1_)))
         {
            _loc3_ = 0;
         }
         loop0:
         do
         {
            §§push(_loc3_);
            while(true)
            {
               if(§§pop() >= _loc1_)
               {
                  if(_loc5_ || Boolean(_loc3_))
                  {
                     addr00f3:
                     _loc2_.length = _loc4_;
                     if(!_loc6_)
                     {
                        break;
                     }
                     §§goto(addr012d);
                  }
                  this.inactiveParticles = 0;
                  §§goto(addr0109);
               }
               else
               {
                  if(this.particlePool[_loc3_].active)
                  {
                     if(!(_loc6_ && Boolean(_loc3_)))
                     {
                        _loc2_[_loc4_] = this.particlePool[_loc3_];
                        if(_loc5_)
                        {
                           §§push(_loc4_);
                           if(_loc5_)
                           {
                              §§push(§§pop() + 1);
                              if(_loc5_ || Boolean(this))
                              {
                                 §§push(§§pop());
                                 if(!(_loc6_ && Boolean(_loc2_)))
                                 {
                                    _loc4_ = §§pop();
                                    if(!(_loc6_ && Boolean(_loc2_)))
                                    {
                                       addr00c1:
                                       §§push(_loc3_);
                                       if(_loc6_)
                                       {
                                          continue;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr012d);
                                    }
                                 }
                                 §§push(§§pop() + 1);
                              }
                              §§push(§§pop());
                              if(!(_loc6_ && Boolean(_loc2_)))
                              {
                                 continue loop0;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        §§goto(addr00f3);
                     }
                     §§goto(addr012d);
                  }
                  §§goto(addr00c1);
               }
            }
            break;
         }
         while(_loc3_ = §§pop(), _loc5_);
         
         this.particlePool = _loc2_;
         if(_loc5_)
         {
            addr0109:
            if(!(_loc6_ && Boolean(_loc2_)))
            {
               addr012d:
               if(this.particlePool.length == 0)
               {
                  if(_loc5_ || Boolean(this))
                  {
                     addr0147:
                     this._timerId = 0;
                  }
               }
               §§goto(addr014d);
            }
            addr014d:
            return;
         }
         §§goto(addr0147);
      }
      
      private function update() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(!_loc7_)
         {
            this.currentTime = getTimer();
            if(_loc6_ || _loc1_)
            {
               this.elapsedSeconds = Number(this.currentTime - this.oldTime) / 1000;
               if(!(_loc7_ && _loc2_))
               {
                  this.currentEmitterIndex = 0;
                  if(_loc6_)
                  {
                     this.numberOfEmitters = this.emitter.length;
                     if(!_loc7_)
                     {
                        §§push(this);
                        if(!_loc7_)
                        {
                           §§pop().currentEmitter = this.numberOfEmitters == 0 ? null : this.emitter[this.currentEmitterIndex];
                           if(_loc6_ || _loc1_)
                           {
                              this.numberOfNewParticles = 0;
                              if(!(_loc7_ && Boolean(this)))
                              {
                                 this.numberOfWholeNewParticles = 0;
                                 if(!_loc7_)
                                 {
                                    addr00cb:
                                    §§push(this.currentEmitter);
                                    if(!_loc7_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc6_)
                                          {
                                             addr00df:
                                             §§push(this);
                                             §§push(this.currentEmitter.newParticlesPerSecond);
                                             if(_loc6_ || _loc2_)
                                             {
                                                §§push(this.elapsedSeconds);
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      addr0115:
                                                      addr010e:
                                                      §§push(§§pop() + this.currentEmitter.rest);
                                                   }
                                                   §§pop().numberOfNewParticles = §§pop();
                                                   if(!_loc7_)
                                                   {
                                                      addr011f:
                                                      this.numberOfWholeNewParticles = uint(this.numberOfNewParticles);
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         addr013a:
                                                         addr013e:
                                                         §§push(this.currentEmitter);
                                                         §§push(this.numberOfNewParticles);
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            §§push(§§pop() - this.numberOfWholeNewParticles);
                                                         }
                                                         §§pop().rest = §§pop();
                                                      }
                                                      addr0158:
                                                      var _loc1_:uint = this.particlePool.length;
                                                      var _loc2_:* = 0;
                                                      loop0:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc7_)
                                                         {
                                                            break;
                                                         }
                                                         loop1:
                                                         while(true)
                                                         {
                                                            if(§§pop() >= _loc1_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this.numberOfWholeNewParticles);
                                                                     if(!(_loc7_ && Boolean(_loc1_)))
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc6_ || Boolean(_loc2_))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 if(!(_loc7_ && _loc3_))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       this.initializeParticle(true);
                                                                                       if(!(_loc7_ && _loc3_))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.numberOfWholeNewParticles);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                break loop0;
                                                                                             }
                                                                                             addr044f:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(0);
                                                                                                break loop1;
                                                                                             }
                                                                                          }
                                                                                          addr041b:
                                                                                       }
                                                                                    }
                                                                                    addr0406:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr044f);
                                                                                 }
                                                                                 addr044b:
                                                                              }
                                                                              §§goto(addr041b);
                                                                           }
                                                                           addr03f4:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    this.gotoNextEmitter();
                                                                                    if(_loc6_ || Boolean(_loc1_))
                                                                                    {
                                                                                       §§goto(addr044b);
                                                                                    }
                                                                                    addr0455:
                                                                                    §§push(Number(this.inactiveParticles) / Number(this.particlePool.length));
                                                                                    if(!(_loc7_ && Boolean(this)))
                                                                                    {
                                                                                       addr0478:
                                                                                       §§push(§§pop());
                                                                                    }
                                                                                    var _loc3_:* = §§pop();
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(_loc3_ > 0.3)
                                                                                       {
                                                                                          if(_loc6_ || Boolean(_loc1_))
                                                                                          {
                                                                                             var _loc4_:* = this;
                                                                                             §§push(_loc4_._potentialCleanUpdates);
                                                                                             if(!(_loc7_ && Boolean(_loc1_)))
                                                                                             {
                                                                                                §§push(§§pop() + 1);
                                                                                             }
                                                                                             var _loc5_:* = §§pop();
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                _loc4_._potentialCleanUpdates = _loc5_;
                                                                                             }
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(this._potentialCleanUpdates >= this._cleanPoolDelay)
                                                                                                {
                                                                                                   if(_loc6_ || Boolean(_loc2_))
                                                                                                   {
                                                                                                      this.purge();
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         addr0510:
                                                                                                         this.oldTime = this.currentTime;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr0518);
                                                                                                }
                                                                                                §§goto(addr0510);
                                                                                             }
                                                                                             §§goto(addr0518);
                                                                                          }
                                                                                          §§goto(addr0510);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          this._potentialCleanUpdates = 0;
                                                                                          if(_loc6_ || Boolean(_loc1_))
                                                                                          {
                                                                                             §§goto(addr0510);
                                                                                          }
                                                                                       }
                                                                                       addr0518:
                                                                                       return;
                                                                                    }
                                                                                    §§goto(addr0510);
                                                                                 }
                                                                                 addr0437:
                                                                              }
                                                                           }
                                                                           §§goto(addr044b);
                                                                        }
                                                                        addr042d:
                                                                     }
                                                                     §§goto(addr044f);
                                                                  }
                                                                  addr03d2:
                                                               }
                                                               §§goto(addr0455);
                                                            }
                                                            else
                                                            {
                                                               this.currentParticle = this.particlePool[_loc2_];
                                                               if(_loc6_)
                                                               {
                                                                  §§push(this.currentParticle);
                                                                  if(!(_loc7_ && Boolean(_loc2_)))
                                                                  {
                                                                     §§push(§§pop().active);
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc6_ || Boolean(this))
                                                                           {
                                                                              §§push(this.currentParticle);
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(§§pop().birthTime + this.currentParticle.lifeTime);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    if(§§pop() < this.currentTime)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§push(this.currentParticle);
                                                                                          if(_loc6_ || Boolean(_loc1_))
                                                                                          {
                                                                                             §§pop().active = false;
                                                                                             if(!(_loc7_ && _loc3_))
                                                                                             {
                                                                                                §§push(this.currentParticle);
                                                                                                if(!(_loc7_ && _loc3_))
                                                                                                {
                                                                                                   §§push(null);
                                                                                                   if(_loc6_ || Boolean(_loc2_))
                                                                                                   {
                                                                                                      §§pop().emitter = §§pop();
                                                                                                      if(_loc6_ || Boolean(_loc2_))
                                                                                                      {
                                                                                                         §§push(this.currentParticle);
                                                                                                         if(!(_loc7_ && Boolean(_loc1_)))
                                                                                                         {
                                                                                                            addr023a:
                                                                                                            §§pop().bitmapData = null;
                                                                                                            if(_loc6_ || Boolean(_loc2_))
                                                                                                            {
                                                                                                               addr024b:
                                                                                                               §§push(this.currentParticle);
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  addr0255:
                                                                                                                  §§pop().parent.removeChild(this.currentParticle);
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     addr0266:
                                                                                                                     _loc4_ = this;
                                                                                                                     §§push(_loc4_.inactiveParticles);
                                                                                                                     if(_loc6_ || Boolean(_loc1_))
                                                                                                                     {
                                                                                                                        §§push(§§pop() + 1);
                                                                                                                     }
                                                                                                                     _loc5_ = §§pop();
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        _loc4_.inactiveParticles = _loc5_;
                                                                                                                     }
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        addr02cb:
                                                                                                                        addr02c7:
                                                                                                                        addr02ce:
                                                                                                                        if(!this.currentParticle.active)
                                                                                                                        {
                                                                                                                           if(!(_loc7_ && Boolean(_loc1_)))
                                                                                                                           {
                                                                                                                              addr02e0:
                                                                                                                              §§push(this.numberOfWholeNewParticles);
                                                                                                                              if(_loc6_ || Boolean(_loc1_))
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 if(!(_loc7_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(§§pop() > §§pop())
                                                                                                                                    {
                                                                                                                                       if(!(_loc7_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          addr0314:
                                                                                                                                          this.initializeParticle();
                                                                                                                                          if(_loc7_)
                                                                                                                                          {
                                                                                                                                             continue loop0;
                                                                                                                                          }
                                                                                                                                          _loc4_ = this;
                                                                                                                                          §§push(_loc4_.inactiveParticles);
                                                                                                                                          if(!(_loc7_ && Boolean(this)))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - 1);
                                                                                                                                          }
                                                                                                                                          _loc5_ = §§pop();
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             _loc4_.inactiveParticles = _loc5_;
                                                                                                                                          }
                                                                                                                                          if(!_loc7_)
                                                                                                                                          {
                                                                                                                                             addr034f:
                                                                                                                                             §§push(this.numberOfWholeNewParticles);
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                addr0359:
                                                                                                                                                §§push(0);
                                                                                                                                                if(_loc7_ && _loc3_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                if(§§pop() == §§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      this.gotoNextEmitter();
                                                                                                                                                      if(!(_loc7_ && Boolean(this)))
                                                                                                                                                      {
                                                                                                                                                         addr0387:
                                                                                                                                                         §§push(_loc2_);
                                                                                                                                                         if(_loc7_ && Boolean(_loc2_))
                                                                                                                                                         {
                                                                                                                                                            break loop0;
                                                                                                                                                         }
                                                                                                                                                         addr0396:
                                                                                                                                                         §§push(§§pop() + 1);
                                                                                                                                                         if(_loc6_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(!(_loc6_ || Boolean(_loc2_)))
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            _loc2_ = §§pop();
                                                                                                                                                            if(_loc6_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               continue loop0;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0455);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0478);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0437);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0406);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0387);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0396);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0437);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr034f);
                                                                                                                                 }
                                                                                                                                 §§goto(addr03f4);
                                                                                                                              }
                                                                                                                              §§goto(addr0359);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr0387);
                                                                                                                     }
                                                                                                                     §§goto(addr0314);
                                                                                                                  }
                                                                                                                  §§goto(addr041b);
                                                                                                               }
                                                                                                               §§goto(addr02cb);
                                                                                                            }
                                                                                                            §§goto(addr0455);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr02ae:
                                                                                                            §§pop().emitter.updateParticle(this.currentParticle,this.elapsedSeconds,this.currentTime);
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§goto(addr02c7);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0406);
                                                                                                      }
                                                                                                      §§goto(addr024b);
                                                                                                   }
                                                                                                   §§goto(addr023a);
                                                                                                }
                                                                                                §§goto(addr0255);
                                                                                             }
                                                                                             §§goto(addr0455);
                                                                                          }
                                                                                          §§goto(addr02cb);
                                                                                       }
                                                                                       §§goto(addr0266);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(this.currentParticle);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§goto(addr02ae);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr02cb);
                                                                                 }
                                                                                 §§goto(addr0478);
                                                                              }
                                                                              §§goto(addr0255);
                                                                           }
                                                                           §§goto(addr0387);
                                                                        }
                                                                        §§goto(addr02c7);
                                                                     }
                                                                     §§goto(addr02ce);
                                                                  }
                                                                  §§goto(addr0255);
                                                               }
                                                               §§goto(addr02e0);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop() > §§pop())
                                                            {
                                                               §§goto(addr03d2);
                                                            }
                                                            §§goto(addr0455);
                                                            §§push(0);
                                                         }
                                                         §§goto(addr041b);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         if(_loc6_)
                                                         {
                                                            §§goto(addr042d);
                                                         }
                                                         §§goto(addr0451);
                                                      }
                                                   }
                                                   §§goto(addr013a);
                                                }
                                                §§goto(addr0115);
                                             }
                                             §§goto(addr010e);
                                          }
                                          §§goto(addr011f);
                                       }
                                       §§goto(addr0158);
                                    }
                                    §§goto(addr013e);
                                 }
                                 §§goto(addr013a);
                              }
                              §§goto(addr00df);
                           }
                           §§goto(addr00cb);
                        }
                        §§goto(addr0084);
                     }
                     §§goto(addr011f);
                  }
                  §§goto(addr00df);
               }
               §§goto(addr0158);
            }
            §§goto(addr00df);
         }
         §§goto(addr00cb);
      }
      
      public function addEmitter(param1:ParticleEmitter) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:int = int(this.emitter.indexOf(param1));
         if(_loc3_)
         {
            if(_loc2_ != -1)
            {
               if(_loc3_)
               {
                  return;
               }
               addr0059:
               this.oldTime = getTimer();
               if(_loc3_ || Boolean(_loc2_))
               {
                  §§goto(addr007e);
               }
               §§goto(addr0095);
            }
            else
            {
               this.emitter.push(param1);
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr0059);
               }
            }
            addr007e:
            if(this._timerId == 0)
            {
               if(_loc3_ || Boolean(param1))
               {
                  addr0095:
                  this._timerId = 1;
                  if(!_loc4_)
                  {
                     setInterval(this.update,1);
                  }
               }
            }
            §§goto(addr00af);
         }
         addr00af:
      }
      
      public function removeEmitter(param1:ParticleEmitter) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:int = int(this.emitter.indexOf(param1));
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ == -1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  return;
               }
            }
         }
         this.emitter.splice(_loc2_,1);
      }
      
      private function gotoNextEmitter() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            var _loc1_:* = this;
            var _loc2_:* = _loc1_.currentEmitterIndex + 1;
            if(_loc4_ || Boolean(_loc2_))
            {
               _loc1_.currentEmitterIndex = _loc2_;
            }
            if(!_loc3_)
            {
               §§push(this);
               if(_loc4_ || Boolean(_loc2_))
               {
                  §§pop().currentEmitter = this.currentEmitterIndex < this.numberOfEmitters ? this.emitter[this.currentEmitterIndex] : null;
                  if(_loc4_)
                  {
                     this.numberOfNewParticles = 0;
                     if(_loc4_)
                     {
                        this.numberOfWholeNewParticles = 0;
                        if(_loc4_)
                        {
                           §§push(this.currentEmitter);
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              if(§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    addr00b9:
                                    §§push(this);
                                    §§push(this.currentEmitter.newParticlesPerSecond);
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(this.elapsedSeconds);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc3_)
                                          {
                                             addr00e6:
                                             addr00df:
                                             §§push(§§pop() + this.currentEmitter.rest);
                                          }
                                          §§pop().numberOfNewParticles = §§pop();
                                          if(_loc4_)
                                          {
                                             §§goto(addr00fc);
                                          }
                                          §§goto(addr010f);
                                       }
                                       §§goto(addr00e6);
                                    }
                                    §§goto(addr00df);
                                 }
                                 addr00fc:
                                 this.numberOfWholeNewParticles = uint(this.numberOfNewParticles);
                                 if(_loc4_)
                                 {
                                    addr010f:
                                    addr0113:
                                    §§push(this.currentEmitter);
                                    §§push(this.numberOfNewParticles);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§push(§§pop() - this.numberOfWholeNewParticles);
                                    }
                                    §§pop().rest = §§pop();
                                 }
                              }
                              §§goto(addr012c);
                           }
                           §§goto(addr0113);
                        }
                        §§goto(addr00b9);
                     }
                     §§goto(addr010f);
                  }
                  addr012c:
                  return;
               }
               §§goto(addr005a);
            }
            §§goto(addr00fc);
         }
         §§goto(addr00b9);
      }
      
      private function initializeParticle(param1:Boolean = false) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!(_loc5_ && param1))
         {
            if(param1)
            {
               if(!_loc5_)
               {
                  addr002c:
                  this.currentParticle = new Particle();
                  if(!(_loc5_ && param1))
                  {
                     this.particlePool.push(this.currentParticle);
                     if(_loc4_)
                     {
                        §§goto(addr006f);
                     }
                     §§goto(addr0085);
                  }
                  addr006f:
                  this.currentEmitter.initializeParticle(this.currentParticle,this.currentTime);
                  if(_loc4_)
                  {
                     addr0085:
                     var _loc2_:* = this;
                     var _loc3_:* = _loc2_.numberOfWholeNewParticles - 1;
                     if(!_loc5_)
                     {
                        _loc2_.numberOfWholeNewParticles = _loc3_;
                     }
                  }
                  §§goto(addr009c);
               }
               addr009c:
               return;
            }
            §§goto(addr006f);
         }
         §§goto(addr002c);
      }
   }
}


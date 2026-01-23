package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigImprovementDTO
   {
      
      private var _id:Number;
      
      private var _gfxId:int;
      
      private var _locaId:String;
      
      private var _quality:String;
      
      private var _lifetime:Number = -1;
      
      private var _renewCost:int;
      
      private var _effects:Vector.<ConfigEffectDTO>;
      
      private var _tagIds:Vector.<Number>;
      
      public function ConfigImprovementDTO(param1:Object)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         if(!_loc7_)
         {
            super();
            if(!_loc7_)
            {
               this._id = param1.cid;
               if(_loc6_)
               {
                  this._gfxId = param1.gfx;
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     this._locaId = param1.lo;
                     if(_loc6_)
                     {
                        addr0061:
                        this._quality = param1.q;
                        if(_loc6_ || Boolean(param1))
                        {
                           addr0079:
                           if(param1.t)
                           {
                              if(!(_loc7_ && Boolean(this)))
                              {
                                 addr0090:
                                 this._lifetime = param1.t;
                                 if(_loc6_ || Boolean(_loc3_))
                                 {
                                    addr00a8:
                                    this._renewCost = param1.c;
                                    if(!_loc7_)
                                    {
                                       addr00b8:
                                       this._effects = new Vector.<ConfigEffectDTO>();
                                    }
                                 }
                                 var _loc4_:int = 0;
                                 var _loc5_:* = param1.eff;
                                 loop0:
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc5_,_loc4_));
                                    if(!(_loc6_ || Boolean(_loc3_)))
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       _loc2_ = §§nextvalue(_loc4_,_loc5_);
                                       if(_loc6_ || Boolean(_loc2_))
                                       {
                                          this._effects.push(new ConfigEffectDTO(_loc2_));
                                       }
                                       continue;
                                    }
                                    if(!_loc7_)
                                    {
                                       if(!(_loc7_ && Boolean(_loc2_)))
                                       {
                                          if(_loc6_)
                                          {
                                             this._tagIds = new Vector.<Number>();
                                             if(_loc6_ || Boolean(_loc3_))
                                             {
                                                _loc4_ = 0;
                                                if(!_loc7_)
                                                {
                                                   addr0163:
                                                   _loc5_ = param1.tag;
                                                   if(!(_loc7_ && Boolean(_loc3_)))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc5_,_loc4_));
                                                         break loop0;
                                                      }
                                                      addr01b2:
                                                      return;
                                                      addr01a7:
                                                      addr01b0:
                                                      addr01ae:
                                                   }
                                                   while(true)
                                                   {
                                                      this._tagIds.push(_loc3_);
                                                      §§goto(addr01a7);
                                                   }
                                                   addr019f:
                                                }
                                                §§goto(addr01b0);
                                             }
                                          }
                                          §§goto(addr01b2);
                                       }
                                       §§goto(addr0163);
                                    }
                                    §§goto(addr01ae);
                                 }
                                 while(§§pop())
                                 {
                                    _loc3_ = §§nextvalue(_loc4_,_loc5_);
                                    if(!(_loc7_ && Boolean(_loc2_)))
                                    {
                                       §§goto(addr019f);
                                    }
                                    §§goto(addr01a7);
                                 }
                                 §§goto(addr01ae);
                              }
                           }
                           §§goto(addr00a8);
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr00b8);
                  }
                  §§goto(addr0061);
               }
            }
            §§goto(addr00b8);
         }
         §§goto(addr0079);
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get gfxId() : int
      {
         return this._gfxId;
      }
      
      public function get locaId() : String
      {
         return this._locaId;
      }
      
      public function get quality() : String
      {
         return this._quality;
      }
      
      public function get lifetime() : Number
      {
         return this._lifetime;
      }
      
      public function get renewCost() : int
      {
         return this._renewCost;
      }
      
      public function get effects() : Vector.<ConfigEffectDTO>
      {
         return this._effects;
      }
      
      public function get tagIds() : Vector.<Number>
      {
         return this._tagIds;
      }
   }
}


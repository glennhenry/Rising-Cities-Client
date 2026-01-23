package net.bigpoint.cityrama.model.improvement.vo
{
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigEffectDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigImprovementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ImprovementDTO;
   
   public class ImprovementVo
   {
      
      private var _config:ConfigImprovementDTO;
      
      private var _dto:ImprovementDTO;
      
      private var _listOfEfficiencies:Vector.<ImprovementEfficiencyVo>;
      
      private var _tags:Vector.<String>;
      
      public function ImprovementVo(param1:ImprovementDTO, param2:ConfigImprovementDTO)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:ConfigEffectDTO = null;
         if(_loc6_ || Boolean(this))
         {
            super();
            if(_loc6_)
            {
               addr002f:
               this._dto = param1;
               if(!(_loc7_ && Boolean(this)))
               {
                  this._config = param2;
                  if(_loc6_ || Boolean(param1))
                  {
                     addr0062:
                     this._listOfEfficiencies = new Vector.<ImprovementEfficiencyVo>(0);
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0062);
            }
            addr0076:
            for each(_loc3_ in this._config.effects)
            {
               if(_loc6_)
               {
                  this._listOfEfficiencies.push(new ImprovementEfficiencyVo(_loc3_));
               }
            }
            return;
         }
         §§goto(addr002f);
      }
      
      public function get listOfEfficiencies() : Vector.<ImprovementEfficiencyVo>
      {
         return this._listOfEfficiencies;
      }
      
      public function getEfficiencyByTag(param1:String) : ImprovementEfficiencyVo
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ImprovementEfficiencyVo = null;
         var _loc3_:int = 0;
         var _loc4_:* = this._listOfEfficiencies;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_ && Boolean(this))
               {
                  break;
               }
               if(_loc2_.tag == param1)
               {
                  if(!(_loc5_ && Boolean(_loc3_)))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function get config() : ConfigImprovementDTO
      {
         return this._config;
      }
      
      public function get currentSlotId() : Number
      {
         return this._dto.slotId;
      }
      
      public function get equippedBuildingId() : Number
      {
         return this._dto.buildingId;
      }
      
      public function get gfxId() : Number
      {
         return this._config.gfxId;
      }
      
      public function get localeId() : String
      {
         return this._config.locaId;
      }
      
      public function get runtime() : Number
      {
         return this._config.lifetime;
      }
      
      public function get renewalPrice() : Number
      {
         return Math.abs(this._config.renewCost);
      }
      
      public function get quality() : String
      {
         return this._config.quality;
      }
      
      public function get qualityAsInt() : int
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = this.quality;
         if(!(_loc2_ && _loc3_))
         {
            §§push(ServerImprovementConstants.QUALITY_COMMON);
            if(_loc3_ || _loc3_)
            {
               §§push(_loc1_);
               if(_loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        §§push(0);
                        if(_loc2_ && Boolean(this))
                        {
                        }
                     }
                     else
                     {
                        addr00eb:
                        §§push(1);
                        if(_loc3_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ServerImprovementConstants.QUALITY_RARE);
                     if(!_loc2_)
                     {
                        §§push(_loc1_);
                        if(_loc3_ || Boolean(this))
                        {
                           addr00da:
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§goto(addr00eb);
                              }
                              else
                              {
                                 addr0118:
                                 §§push(2);
                                 if(_loc2_ && _loc2_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(ServerImprovementConstants.QUALITY_EPIC);
                              if(!_loc2_)
                              {
                                 addr0101:
                                 §§push(_loc1_);
                                 if(_loc3_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          §§goto(addr0118);
                                       }
                                       else
                                       {
                                          addr0143:
                                          §§push(3);
                                          if(_loc2_ && _loc3_)
                                          {
                                          }
                                       }
                                       §§goto(addr0162);
                                    }
                                    else
                                    {
                                       §§goto(addr0132);
                                    }
                                 }
                                 addr0132:
                                 §§goto(addr0131);
                              }
                              addr0131:
                              if(ServerImprovementConstants.QUALITY_LEGENDARY === _loc1_)
                              {
                                 §§goto(addr0143);
                              }
                              else
                              {
                                 §§push(4);
                              }
                              §§goto(addr0162);
                           }
                           §§goto(addr0162);
                        }
                        §§goto(addr0132);
                     }
                     §§goto(addr0131);
                  }
                  addr0162:
                  if(_loc3_ || Boolean(this))
                  {
                     loop0:
                     while(true)
                     {
                        switch(§§pop())
                        {
                           case 0:
                              §§push(1);
                              if(!_loc2_)
                              {
                                 return §§pop();
                              }
                              break loop0;
                           case 1:
                              §§push(2);
                              if(_loc3_)
                              {
                                 return §§pop();
                              }
                              break;
                           case 2:
                              §§push(3);
                              if(_loc3_)
                              {
                                 return §§pop();
                              }
                              break loop0;
                           case 3:
                              §§push(4);
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue;
                           default:
                              return 0;
                        }
                        return §§pop();
                     }
                  }
                  return §§pop();
               }
               §§goto(addr00da);
            }
            §§goto(addr0101);
         }
         §§goto(addr0118);
      }
      
      public function get startTime() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(this._dto);
            if(_loc2_)
            {
               §§push(§§pop().expirationTime - this.runtime);
               if(_loc2_)
               {
                  if(§§pop() < 0)
                  {
                     if(!_loc1_)
                     {
                        §§goto(addr0049);
                     }
                  }
                  addr0050:
                  return this._dto.expirationTime - this.runtime;
               }
            }
            §§goto(addr0050);
         }
         addr0049:
         return -1;
      }
      
      public function get expirationTime() : Number
      {
         return this._dto.expirationTime;
      }
      
      public function get dto() : ImprovementDTO
      {
         return this._dto;
      }
      
      public function set tags(param1:Vector.<String>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._tags = param1;
         }
      }
      
      public function get tags() : Vector.<String>
      {
         return this._tags;
      }
   }
}


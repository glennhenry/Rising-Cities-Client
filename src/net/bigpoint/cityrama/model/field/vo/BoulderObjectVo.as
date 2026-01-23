package net.bigpoint.cityrama.model.field.vo
{
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.server.vo.server.BoulderVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEventDrop;
   
   public class BoulderObjectVo extends BillboardObjectVo implements IEventDrop
   {
      
      private var _boulderVo:BoulderVo;
      
      private var _phaseJustStarted:Boolean;
      
      private var _currentEventLocaleId:String;
      
      public function BoulderObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super(param1);
         }
      }
      
      public function get boulderVo() : BoulderVo
      {
         return this._boulderVo;
      }
      
      override public function get activePhases() : Vector.<PhaseDTO>
      {
         return this._boulderVo.activePhases;
      }
      
      override public function set activePhases(param1:Vector.<PhaseDTO>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._boulderVo.activePhases = param1;
         }
      }
      
      public function set boulderVo(param1:BoulderVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._boulderVo = param1;
         }
      }
      
      public function get isInDemolitionMode() : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:PhaseDTO = null;
         if(!(_loc4_ && _loc2_))
         {
            if(this.activePhases.length > 0)
            {
               §§goto(addr003f);
            }
            return false;
         }
         addr003f:
         var _loc2_:int = 0;
         var _loc3_:* = this.activePhases;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc4_ && Boolean(_loc2_))
               {
                  break;
               }
               if(_loc1_.config.phaseType == ServerPhaseTypes.DESTRUCTIONPHASE_REMOVE_BOULDER)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               continue;
            }
         }
         return true;
      }
      
      override public function get userInteractionLocked() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            §§push(this.isInDemolitionMode);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || Boolean(this))
                  {
                     §§push(true);
                     if(_loc1_ || _loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr0050:
                     §§push(super.userInteractionLocked);
                  }
                  §§goto(addr0054);
               }
               §§goto(addr0050);
            }
            addr0054:
            return §§pop();
         }
         §§goto(addr0050);
      }
      
      public function get boulderType() : String
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = configPlayfieldItemVo.tags;
         loop0:
         for each(_loc2_ in _loc3_)
         {
            §§push(_loc2_);
            if(_loc6_ || Boolean(this))
            {
               _loc1_ = §§pop();
               if(_loc5_)
               {
                  continue;
               }
               §§push(_loc1_);
            }
            do
            {
               var _loc4_:* = §§pop();
               if(!_loc5_)
               {
                  §§push(ServerTagConstants.TREE);
                  if(!_loc5_)
                  {
                     §§push(_loc4_);
                     if(!(_loc5_ && Boolean(this)))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc6_)
                           {
                              §§push(0);
                              if(_loc6_ || _loc3_)
                              {
                              }
                           }
                           else
                           {
                              addr00df:
                              §§push(1);
                              if(_loc6_ || Boolean(_loc2_))
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(ServerTagConstants.ROCK);
                           if(!_loc5_)
                           {
                              §§push(_loc4_);
                              if(!_loc5_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc5_ && Boolean(this)))
                                    {
                                       §§goto(addr00df);
                                    }
                                    else
                                    {
                                       addr010c:
                                       §§push(2);
                                       if(_loc6_)
                                       {
                                       }
                                    }
                                    addr0124:
                                    switch(§§pop())
                                    {
                                       case 0:
                                       case 1:
                                       case 2:
                                          break;
                                       default:
                                          continue loop0;
                                    }
                                 }
                                 else
                                 {
                                    addr0108:
                                    addr0106:
                                    if(ServerTagConstants.SHRUBBERY === _loc4_)
                                    {
                                       §§goto(addr010c);
                                    }
                                    else
                                    {
                                       §§push(3);
                                    }
                                    §§goto(addr0124);
                                 }
                                 §§goto(addr010c);
                              }
                              §§goto(addr0108);
                           }
                           §§goto(addr0106);
                        }
                        §§goto(addr0124);
                     }
                     §§goto(addr0108);
                  }
                  §§goto(addr0106);
               }
               §§goto(addr00df);
               return _loc1_;
            }
            while(_loc5_ && Boolean(this));
            
            return §§pop();
         }
         return "";
      }
      
      public function get demolitionCosts() : Number
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:ConfigOutputDTO = null;
         if(_loc4_)
         {
            if(configPlayfieldItemVo.destructionPhases.length)
            {
               if(_loc4_)
               {
                  addr0033:
                  if(configPlayfieldItemVo.destructionPhases[0])
                  {
                     addr0043:
                     var _loc3_:* = configPlayfieldItemVo.destructionPhases[0].listEntryOutputs;
                     for each(_loc1_ in _loc3_)
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(_loc1_.resourceConfig);
                           if(_loc4_ || _loc3_)
                           {
                              if(§§pop() == null)
                              {
                                 continue;
                              }
                              if(!_loc4_)
                              {
                                 continue;
                              }
                              §§push(_loc1_.resourceConfig);
                           }
                           if(§§pop().type == ServerResConst.RESOURCE_VIRTUALCURRENCY)
                           {
                              if(!(_loc5_ && Boolean(this)))
                              {
                                 return Math.abs(_loc1_.outputAmount);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr00d9);
               }
               §§goto(addr0043);
            }
            addr00d9:
            return 0;
         }
         §§goto(addr0033);
      }
      
      override public function get percentageOfRemainingTimer() : Number
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:PhaseDTO = null;
         if(!_loc4_)
         {
            if(this.activePhases.length > 0)
            {
               addr002c:
               var _loc2_:int = 0;
               for each(_loc1_ in this.activePhases)
               {
                  if(_loc4_ && Boolean(_loc2_))
                  {
                     continue;
                  }
                  if(_loc1_.config.phaseType != ServerPhaseTypes.DESTRUCTIONPHASE_REMOVE_BOULDER)
                  {
                     continue;
                  }
                  if(_loc4_)
                  {
                     continue;
                  }
                  §§push(_loc1_.expirationTime);
                  if(_loc5_)
                  {
                     §§push(§§pop() - currentTimeStamp);
                     if(!_loc4_)
                     {
                        addr0093:
                        return §§pop() / _loc1_.config.durationConfig.duration;
                     }
                  }
                  §§goto(addr0093);
               }
            }
            return super.percentageOfRemainingTimer;
         }
         §§goto(addr002c);
      }
      
      public function get phaseJustStarted() : Boolean
      {
         return this._phaseJustStarted;
      }
      
      public function set phaseJustStarted(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._phaseJustStarted = param1;
         }
      }
      
      public function get isStreetBoulder() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(configPlayfieldItemVo)
            {
               if(_loc1_)
               {
                  §§push(configPlayfieldItemVo.tags.indexOf(ServerTagConstants.STREETBOULDER) == -1);
                  if(_loc1_)
                  {
                     §§push(!§§pop());
                     if(_loc1_ || _loc1_)
                     {
                        return §§pop();
                     }
                  }
               }
               else
               {
                  addr0051:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr0051);
      }
      
      public function get isEventBoulder() : Boolean
      {
         return configPlayfieldItemVo.gfxId > 43000;
      }
      
      public function get currentEventLocaleId() : String
      {
         return this._currentEventLocaleId;
      }
      
      public function set currentEventLocaleId(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._currentEventLocaleId = param1;
         }
      }
   }
}


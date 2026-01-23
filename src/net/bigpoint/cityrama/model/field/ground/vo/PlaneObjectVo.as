package net.bigpoint.cityrama.model.field.ground.vo
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.field.interfaces.IPlaneObjectVo;
   import net.bigpoint.cityrama.model.field.vo.GameObjectVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.GroundDTO;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IFloaterObjectVo;
   
   public class PlaneObjectVo extends GameObjectVo implements IPlaneObjectVo, IFloaterObjectVo
   {
      
      public static const DATA_CHANGED:String = "DATA_CHANGED";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         DATA_CHANGED = "DATA_CHANGED";
      }
      
      private var _groundDTO:GroundDTO;
      
      private var _tilesize:Number;
      
      private var _isConnectedToStreet:Boolean;
      
      private var _informationFloaterPhase:ConfigPhaseDTO;
      
      private var _informationFloaterCustomText:String;
      
      private var _userInteractionLocked:Boolean;
      
      public function PlaneObjectVo(param1:ConfigPlayfieldItemDTO, param2:Number)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param1))
         {
            this.tilesize = param2;
            if(_loc3_ || _loc3_)
            {
               super(param1);
            }
         }
      }
      
      public function get groundDTO() : GroundDTO
      {
         return this._groundDTO;
      }
      
      public function set groundDTO(param1:GroundDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._groundDTO = param1;
            if(_loc3_)
            {
               this._isConnectedToStreet = param1.active;
               if(!_loc2_)
               {
                  addr003b:
                  dispatchEvent(new Event(DATA_CHANGED));
               }
            }
            return;
         }
         §§goto(addr003b);
      }
      
      public function get tilesize() : Number
      {
         return this._tilesize;
      }
      
      public function set tilesize(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._tilesize = param1;
         }
      }
      
      public function userCanAffordPlacement(param1:ConfigPlayfieldItemDTO, param2:Number, param3:Number) : Boolean
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:ConfigOutputDTO = null;
         var _loc5_:int = 0;
         var _loc6_:* = param1.constructionPhases[0].listEntryOutputs;
         while(true)
         {
            for each(_loc4_ in _loc6_)
            {
               §§push(_loc4_.resourceConfig);
               if(_loc7_)
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(!_loc7_)
                  {
                     continue;
                  }
                  §§push(_loc4_.resourceConfig);
                  if(_loc7_ || Boolean(param3))
                  {
                     §§push(§§pop().type);
                     if(!_loc8_)
                     {
                        §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
                        if(_loc7_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!(_loc7_ || Boolean(param2)))
                              {
                                 break;
                              }
                              if(Math.abs(_loc4_.outputAmount) > param2)
                              {
                                 if(!(_loc8_ && Boolean(param2)))
                                 {
                                    §§push(false);
                                    if(!_loc8_)
                                    {
                                       return §§pop();
                                    }
                                    addr0118:
                                    return §§pop();
                                 }
                                 break;
                              }
                              continue;
                           }
                           addr00d5:
                           addr00d3:
                           §§push(_loc4_.resourceConfig.type);
                           §§push(ServerResConst.RESOURCE_REALCURRENCY);
                        }
                        if(§§pop() == §§pop())
                        {
                           if(!(_loc7_ || Boolean(param3)))
                           {
                              break;
                           }
                           if(Math.abs(_loc4_.outputAmount) > param3)
                           {
                              if(_loc7_ || Boolean(param2))
                              {
                                 break;
                              }
                           }
                        }
                        continue;
                     }
                     §§goto(addr00d5);
                  }
               }
               §§goto(addr00d3);
            }
            return true;
         }
         §§goto(addr0118);
         §§push(false);
      }
      
      public function get isConnectedToStreet() : Boolean
      {
         return this._isConnectedToStreet;
      }
      
      public function set isConnectedToStreet(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._isConnectedToStreet = param1;
            if(!(_loc2_ && _loc2_))
            {
               addr003e:
               dispatchEvent(new Event(DATA_CHANGED));
            }
            return;
         }
         §§goto(addr003e);
      }
      
      public function get informationFloaterPhase() : ConfigPhaseDTO
      {
         return this._informationFloaterPhase;
      }
      
      public function set informationFloaterPhase(param1:ConfigPhaseDTO) : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc2_:ConfigPhaseDTO = null;
         var _loc3_:ConfigPhaseDTO = null;
         var _loc4_:ConfigOutputDTO = null;
         if(_loc9_)
         {
            if(param1 != null)
            {
               if(!(_loc10_ && Boolean(param1)))
               {
                  if(param1.phaseType == ServerPhaseTypes.CREATE_ACTIVATE)
                  {
                     addr004c:
                     for each(_loc2_ in configPlayfieldItemVo.activePhases)
                     {
                        if(_loc9_ || Boolean(_loc2_))
                        {
                           if(_loc2_.phaseType != ServerPhaseTypes.ACTIVATION)
                           {
                              continue;
                           }
                        }
                        _loc3_ = param1.clone();
                        if(!_loc10_)
                        {
                           var _loc7_:int = 0;
                           if(!(_loc10_ && Boolean(this)))
                           {
                              for each(_loc4_ in _loc2_.listEntryOutputs)
                              {
                                 if(_loc9_ || Boolean(_loc3_))
                                 {
                                    _loc3_.listEntryOutputs.push(_loc4_);
                                 }
                              }
                           }
                           if(!(_loc9_ || Boolean(param1)))
                           {
                              continue;
                           }
                        }
                        this._informationFloaterPhase = _loc3_;
                        if(_loc9_ || Boolean(_loc2_))
                        {
                           return;
                        }
                     }
                     if(_loc9_ || Boolean(param1))
                     {
                        this._informationFloaterPhase = param1;
                        if(_loc10_ && Boolean(param1))
                        {
                        }
                     }
                  }
                  else
                  {
                     this._informationFloaterPhase = param1;
                     if(_loc9_ || Boolean(_loc3_))
                     {
                     }
                  }
                  §§goto(addr0162);
               }
               §§goto(addr004c);
            }
            else
            {
               this._informationFloaterPhase = null;
            }
            addr0162:
            return;
         }
         §§goto(addr004c);
      }
      
      public function get informationFloaterCustomText() : String
      {
         return this._informationFloaterCustomText;
      }
      
      public function set informationFloaterCustomText(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._informationFloaterCustomText = param1;
         }
      }
      
      public function getSpecificConstructionPhase(param1:String) : ConfigPhaseDTO
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:ConfigPhaseDTO = null;
         for each(_loc2_ in configPlayfieldItemVo.constructionPhases)
         {
            if(_loc5_)
            {
               if(_loc2_.phaseType == param1)
               {
                  if(!(_loc6_ && Boolean(_loc2_)))
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function getDestructionPhase() : ConfigPhaseDTO
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:ConfigPhaseDTO = null;
         var _loc2_:int = 0;
         var _loc3_:* = configPlayfieldItemVo.destructionPhases;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!(_loc4_ || Boolean(_loc2_)))
               {
                  break;
               }
               if(_loc1_.phaseType == ServerPhaseTypes.DESTRUCTIONPHASE_REMOVE_BUILDING)
               {
                  if(!(_loc5_ && Boolean(this)))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc1_;
      }
      
      public function get userInteractionLocked() : Boolean
      {
         return this._userInteractionLocked;
      }
      
      public function set userInteractionLocked(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._userInteractionLocked = param1;
         }
      }
   }
}


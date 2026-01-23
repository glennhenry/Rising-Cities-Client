package net.bigpoint.cityrama.model.field.vo
{
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIcondataVo;
   
   public class PlayfieldSwitchFieldObjectVo extends ClientFieldObjectVo implements IIcondataVo
   {
      
      public static const STATE_BLOCKED:String = "STATE_BLOCKED";
      
      public static const STATE_IN_PROGRESS:String = "STATE_IN_PROGRESS";
      
      public static const STATE_DONE:String = "STATE_DONE";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || PlayfieldSwitchFieldObjectVo)
      {
         STATE_BLOCKED = "STATE_BLOCKED";
         if(!(_loc2_ && _loc1_))
         {
            STATE_IN_PROGRESS = "STATE_IN_PROGRESS";
            if(!_loc2_)
            {
               addr004b:
               STATE_DONE = "STATE_DONE";
            }
            return;
         }
      }
      §§goto(addr004b);
      
      private var _currentPlayfieldId:Number;
      
      private var _targetPlayfieldId:uint;
      
      private var _questIdentifier:String;
      
      private var _enabledFeatureType:String;
      
      private var _currentMode:String;
      
      private var _userInteractionLocked:Boolean;
      
      private var _hideIconsForMoveMode:Boolean;
      
      private var _state:String;
      
      public function PlayfieldSwitchFieldObjectVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
            if(_loc2_)
            {
               this._enabledFeatureType = "";
               if(!(_loc1_ && _loc1_))
               {
                  addr0043:
                  this._questIdentifier = "";
               }
               return;
            }
         }
         §§goto(addr0043);
      }
      
      public function get currentPlayfieldId() : Number
      {
         return this._currentPlayfieldId;
      }
      
      public function set currentPlayfieldId(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._currentPlayfieldId = param1;
         }
      }
      
      public function get targetPlayfieldId() : uint
      {
         return this._targetPlayfieldId;
      }
      
      public function set targetPlayfieldId(param1:uint) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._targetPlayfieldId = param1;
         }
      }
      
      public function get questIdentifier() : String
      {
         return this._questIdentifier;
      }
      
      public function set questIdentifier(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._questIdentifier = param1;
         }
      }
      
      public function get enabledFeatureType() : String
      {
         return this._enabledFeatureType;
      }
      
      public function set enabledFeatureType(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._enabledFeatureType = param1;
         }
      }
      
      public function get currentMode() : String
      {
         return this._currentMode;
      }
      
      public function set currentMode(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._currentMode = param1;
         }
      }
      
      public function get hideIconsForMoveMode() : Boolean
      {
         return this._hideIconsForMoveMode;
      }
      
      public function get useIcons() : Boolean
      {
         return true;
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
         if(!(_loc3_ && param1))
         {
            this._userInteractionLocked = param1;
         }
      }
      
      public function get state() : String
      {
         return this._state;
      }
      
      public function set state(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._state = param1;
         }
      }
      
      override public function get assetFrame() : String
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(HorizionSettingsVo.playfieldIdToGfxId(this.currentPlayfieldId) + "_to_");
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop() + HorizionSettingsVo.playfieldIdToGfxId(this.targetPlayfieldId));
         }
         var _loc1_:String = §§pop();
         §§push(this.state);
         loop0:
         while(true)
         {
            var _loc2_:* = §§pop();
            if(_loc3_)
            {
               §§push(PlayfieldSwitchFieldObjectVo.STATE_IN_PROGRESS);
               if(_loc3_)
               {
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr00cf:
                           §§push(0);
                           if(_loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr013b:
                           §§push(3);
                           if(_loc4_ && Boolean(_loc1_))
                           {
                           }
                        }
                        §§goto(addr0151);
                     }
                     §§push(PlayfieldSwitchFieldObjectVo.STATE_BLOCKED);
                     if(!(_loc4_ && Boolean(this)))
                     {
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc4_ && Boolean(_loc1_)))
                              {
                                 §§push(1);
                                 if(_loc3_ || _loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr013b);
                              }
                              §§goto(addr0151);
                           }
                           else
                           {
                              §§goto(addr0137);
                           }
                        }
                        addr0137:
                        §§goto(addr0136);
                     }
                     addr0136:
                     if(PlayfieldSwitchFieldObjectVo.STATE_DONE === _loc2_)
                     {
                        §§goto(addr013b);
                     }
                     else
                     {
                        §§push(2);
                     }
                     addr0151:
                     switch(§§pop())
                     {
                        case 0:
                           §§push(_loc1_);
                           if(!_loc4_)
                           {
                              §§push("_inProgress");
                              if(_loc3_ || Boolean(this))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    return §§pop();
                                 }
                                 addr007e:
                                 return §§pop();
                              }
                              break loop0;
                           }
                           continue;
                        case 1:
                           §§push(_loc1_);
                           if(_loc3_)
                           {
                              §§push("_blocked");
                              break loop0;
                           }
                           break;
                        default:
                           §§push(_loc1_);
                           if(!(_loc4_ && Boolean(_loc1_)))
                           {
                              break;
                           }
                           continue;
                     }
                     return §§pop();
                     §§goto(addr013b);
                  }
                  §§goto(addr0137);
               }
               §§goto(addr0136);
            }
            §§goto(addr00cf);
         }
         §§goto(addr007e);
         §§push(§§pop() + §§pop());
      }
      
      public function set hideIconsForMoveMode(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._hideIconsForMoveMode = param1;
         }
      }
   }
}


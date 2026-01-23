package net.bigpoint.cityrama.view.field.ui.components.fieldObjects
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.model.field.vo.PlayfieldSwitchFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.PlayfieldSwitchFieldObjectIconManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIconStateManager;
   import net.bigpoint.field3d.vo.MatrixObject3dVo;
   
   public class PlayfieldSwitchFieldObject extends ClientFieldObject
   {
      
      private var _playfieldSwitchFieldObjectVo:PlayfieldSwitchFieldObjectVo;
      
      protected var _iconStateManager:IIconStateManager;
      
      protected var _iconContainer:Sprite;
      
      public function PlayfieldSwitchFieldObject(param1:PreloadableDisplayObject, param2:MatrixObject3dVo)
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:DisplayObject = null;
         if(_loc7_ || Boolean(param1))
         {
            this._iconContainer = new Sprite();
            if(_loc7_ || Boolean(_loc3_))
            {
               addr003e:
               super(param1,param2);
               if(_loc7_ || Boolean(param2))
               {
                  this._playfieldSwitchFieldObjectVo = param2 as PlayfieldSwitchFieldObjectVo;
                  if(!_loc6_)
                  {
                     addContainer(this._iconContainer,true);
                     if(!_loc6_)
                     {
                        addr0072:
                        this._iconContainer.addEventListener(MouseEvent.CLICK,this.onMouseClick);
                        if(_loc7_)
                        {
                           this._iconContainer.addEventListener(MouseEvent.MOUSE_OVER,this.onIconMouseOver);
                           if(_loc7_ || Boolean(_loc3_))
                           {
                              addr00b4:
                              this.prepareIconStateManager();
                           }
                        }
                     }
                     for each(_loc3_ in this.sprites)
                     {
                        if(!_loc6_)
                        {
                           if(!(_loc3_ is Sprite))
                           {
                              continue;
                           }
                           if(_loc6_ && Boolean(this))
                           {
                              continue;
                           }
                        }
                        (_loc3_ as Sprite).mouseEnabled = false;
                     }
                     if(_loc7_ || Boolean(_loc3_))
                     {
                        _hitzoneContainer.mouseEnabled = true;
                        if(_loc7_)
                        {
                           this._iconContainer.mouseEnabled = true;
                           if(!_loc6_)
                           {
                              addr0135:
                              this.container.mouseEnabled = false;
                           }
                           return;
                        }
                     }
                     §§goto(addr0135);
                  }
               }
               §§goto(addr00b4);
            }
            §§goto(addr0072);
         }
         §§goto(addr003e);
      }
      
      public function get playfieldSwitchFieldObjectVo() : PlayfieldSwitchFieldObjectVo
      {
         return this._playfieldSwitchFieldObjectVo;
      }
      
      protected function prepareIconStateManager() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._iconStateManager);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr003b);
                  }
               }
               §§goto(addr004b);
            }
            §§goto(addr004f);
         }
         addr003b:
         this._iconStateManager = new PlayfieldSwitchFieldObjectIconManager();
         if(!_loc1_)
         {
            addr004f:
            this._iconStateManager.prepareIconStateManager(this._playfieldSwitchFieldObjectVo,this._iconContainer,_billboardObjectContainer);
            addr004b:
         }
      }
      
      private function onIconMouseOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._iconContainer.removeEventListener(MouseEvent.MOUSE_OVER,this.onIconMouseOver);
            if(!_loc2_)
            {
               addr003a:
               this._iconContainer.addEventListener(MouseEvent.MOUSE_OUT,this.onIconMouseOut);
               if(_loc3_)
               {
                  this.dispatchRollOver(true);
               }
            }
            return;
         }
         §§goto(addr003a);
      }
      
      private function onIconMouseOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._iconContainer.removeEventListener(MouseEvent.MOUSE_OUT,this.onIconMouseOut);
            if(_loc3_ || _loc3_)
            {
               addr0058:
               this._iconContainer.addEventListener(MouseEvent.MOUSE_OVER,this.onIconMouseOver);
               if(!_loc2_)
               {
                  this.dispatchRollOut(true);
               }
            }
            return;
         }
         §§goto(addr0058);
      }
      
      override public function invalidateHighlightManager(param1:String, param2:Boolean = true) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super.invalidateHighlightManager(param1,param2);
         }
      }
      
      override public function dispatchRollOver(param1:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(this._playfieldSwitchFieldObjectVo.state != PlayfieldSwitchFieldObjectVo.STATE_BLOCKED)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr0041:
                  super.dispatchRollOver(param1);
               }
            }
            return;
         }
         §§goto(addr0041);
      }
      
      override public function dispatchRollOut(param1:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(this._playfieldSwitchFieldObjectVo.state != PlayfieldSwitchFieldObjectVo.STATE_BLOCKED)
            {
               if(_loc3_)
               {
                  addr002e:
                  super.dispatchRollOut(param1);
               }
            }
            return;
         }
         §§goto(addr002e);
      }
      
      override protected function onMouseClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(this._playfieldSwitchFieldObjectVo.state != PlayfieldSwitchFieldObjectVo.STATE_BLOCKED)
            {
               if(!_loc2_)
               {
                  addr002e:
                  super.onMouseClick(param1);
               }
            }
            return;
         }
         §§goto(addr002e);
      }
      
      public function set state(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1 != this._playfieldSwitchFieldObjectVo.state)
            {
               if(_loc3_)
               {
                  this._playfieldSwitchFieldObjectVo.state = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0041);
                  }
                  §§goto(addr0055);
               }
               addr0041:
               invalidateEstablishedManager();
               if(!(_loc2_ && _loc3_))
               {
                  addr0055:
                  this._iconStateManager.invalidateIconStateManager();
               }
               §§goto(addr005d);
            }
         }
         addr005d:
      }
      
      public function set iconVisibility(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this.playfieldSwitchFieldObjectVo);
            §§push(param1);
            if(!(_loc3_ && _loc2_))
            {
               §§push(!§§pop());
            }
            §§pop().hideIconsForMoveMode = §§pop();
            if(!(_loc3_ && Boolean(this)))
            {
               addr0045:
               this._iconStateManager.invalidateIconStateManager();
            }
            return;
         }
         §§goto(addr0045);
      }
   }
}


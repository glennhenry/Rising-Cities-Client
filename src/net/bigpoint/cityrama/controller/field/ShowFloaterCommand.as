package net.bigpoint.cityrama.controller.field
{
   import as3isolib.geom.IsoMath;
   import as3isolib.geom.Pt;
   import com.greensock.TweenMax;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.text.AntiAliasType;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.FieldInfoLayerProxy;
   import net.bigpoint.cityrama.model.field.vo.GameObjectVo;
   import net.bigpoint.cityrama.model.floater.FloaterVo;
   import net.bigpoint.cityrama.view.field.FieldViewPortMediator;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IFloaterObjectVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowFloaterCommand extends SimpleCommand implements ICommand
   {
      
      private var _foregroundContainer:Sprite;
      
      private var _playfieldProxy:PlayfieldProxy;
      
      public function ShowFloaterCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         if(!_loc8_)
         {
            this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         }
         var _loc2_:FieldViewPortMediator = facade.retrieveMediator(FieldViewPortMediator.NAME) as FieldViewPortMediator;
         if(_loc7_ || Boolean(this))
         {
            this._foregroundContainer = _loc2_.forgroundContainer;
         }
         var _loc3_:Vector.<FloaterVo> = param1.getBody().info as Vector.<FloaterVo>;
         var _loc4_:IFloaterObjectVo = param1.getBody().obj as IFloaterObjectVo;
         var _loc5_:Sprite = param1.getBody().container as Sprite;
         var _loc6_:Number = param1.getBody().height as Number;
         if(!_loc8_)
         {
            this.prepareFloater(_loc3_,_loc4_,_loc5_,_loc6_);
         }
      }
      
      private function prepareFloater(param1:Vector.<FloaterVo>, param2:IFloaterObjectVo, param3:Sprite, param4:Number) : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         §§push((param2 as GameObjectVo).matrix3dCoordinates.x * this._playfieldProxy.tileSize);
         if(!(_loc10_ && Boolean(this)))
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         §§push((param2 as GameObjectVo).matrix3dCoordinates.y * this._playfieldProxy.tileSize);
         if(_loc9_)
         {
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         if(_loc9_)
         {
            param3.mouseChildren = param3.mouseEnabled = false;
            if(!_loc10_)
            {
               this._foregroundContainer.mouseChildren = this._foregroundContainer.mouseEnabled = false;
               if(!_loc10_)
               {
                  addr0097:
                  this._foregroundContainer.addChild(param3);
               }
               addr00a0:
               var _loc7_:Point = this.isoToStage(_loc5_,_loc6_);
               if(!(_loc10_ && Boolean(this)))
               {
                  param3.x = _loc7_.x;
                  if(_loc9_ || Boolean(param2))
                  {
                     param3.y = _loc7_.y + param4;
                     if(!(_loc10_ && Boolean(param2)))
                     {
                        addr00f4:
                        this.startFloater(param1,param3);
                     }
                     return;
                  }
               }
               §§goto(addr00f4);
            }
            §§goto(addr0097);
         }
         §§goto(addr00a0);
      }
      
      private function startFloater(param1:Vector.<FloaterVo>, param2:Sprite) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:FloaterVo = null;
         var _loc3_:* = 0;
         for each(_loc4_ in param1)
         {
            if(_loc8_)
            {
               TweenMax.delayedCall(_loc3_,this.showFloaterInformation,[_loc4_,param2]);
               if(_loc7_ && Boolean(_loc3_))
               {
                  continue;
               }
            }
            §§push(_loc3_);
            if(_loc8_ || Boolean(param2))
            {
               §§push(§§pop() + 0.5);
               if(!_loc7_)
               {
                  addr008d:
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
               continue;
            }
            §§goto(addr008d);
         }
      }
      
      private function showFloaterInformation(param1:FloaterVo, param2:Sprite) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:TextField = null;
         var _loc4_:StyleSheet = null;
         if(_loc5_ || Boolean(param1))
         {
            §§push(param1 == null);
            if(_loc5_)
            {
               §§push(!§§pop());
               if(!_loc6_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(!(_loc6_ && Boolean(param1)))
                     {
                        addr0051:
                        §§pop();
                        if(!(_loc6_ && Boolean(_loc3_)))
                        {
                           §§goto(addr0062);
                        }
                        §§goto(addr0066);
                     }
                  }
                  §§goto(addr0062);
               }
               §§goto(addr0051);
            }
            addr0062:
            if(Boolean(param2))
            {
               addr0066:
               _loc3_ = new TextField();
               _loc4_ = new StyleSheet();
               _loc4_.setStyle("block",{
                  "leading":-7,
                  "textAlign":"center"
               });
               if(_loc5_)
               {
                  _loc3_.styleSheet = _loc4_;
                  if(_loc5_)
                  {
                     _loc3_.multiline = true;
                     if(_loc5_)
                     {
                        _loc3_.autoSize = TextFieldAutoSize.CENTER;
                        if(_loc5_ || Boolean(_loc3_))
                        {
                           addr00cb:
                           _loc3_.antiAliasType = AntiAliasType.ADVANCED;
                           if(!_loc6_)
                           {
                              _loc3_.htmlText = "<block>" + param1.text + "</block>";
                              if(_loc5_)
                              {
                                 _loc3_.width = _loc3_.textWidth + 20;
                                 if(!(_loc6_ && Boolean(param1)))
                                 {
                                    _loc3_.height = _loc3_.textHeight + 5;
                                    if(_loc5_ || Boolean(_loc3_))
                                    {
                                       §§goto(addr0134);
                                    }
                                    §§goto(addr01b2);
                                 }
                                 §§goto(addr018a);
                              }
                              §§goto(addr0144);
                           }
                           §§goto(addr01b2);
                        }
                        §§goto(addr018a);
                     }
                     §§goto(addr00cb);
                  }
                  §§goto(addr018a);
               }
               addr0134:
               _loc3_.x = -_loc3_.width / 2;
               if(_loc5_)
               {
                  addr0144:
                  TweenMax.to(_loc3_,0,{"glowFilter":{
                     "color":param1.glowColor,
                     "alpha":1,
                     "blurX":2,
                     "blurY":2,
                     "strength":20
                  }});
                  if(!(_loc6_ && Boolean(_loc3_)))
                  {
                     param2.addChild(_loc3_);
                     if(!_loc6_)
                     {
                        TweenMax.to(_loc3_,1.5,{"y":_loc3_.y - 80});
                        addr018a:
                        if(!_loc6_)
                        {
                           addr01b2:
                           TweenMax.to(_loc3_,0.7,{
                              "delay":0.8,
                              "autoAlpha":0,
                              "onComplete":this.handleFloaterTweenComplete,
                              "onCompleteParams":[_loc3_,param2]
                           });
                        }
                     }
                  }
               }
               §§goto(addr01d6);
            }
            addr01d6:
            return;
         }
         §§goto(addr0066);
      }
      
      private function handleFloaterTweenComplete(param1:TextField, param2:Sprite) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:Number = NaN;
         if(!(_loc5_ && Boolean(this)))
         {
            param2.removeChild(param1);
            if(_loc4_ || Boolean(param2))
            {
               addr0044:
               if(param2.numChildren == 0)
               {
                  if(!(_loc5_ && Boolean(this)))
                  {
                     if(this._foregroundContainer.contains(param2))
                     {
                        if(_loc4_)
                        {
                           _loc3_ = this._foregroundContainer.getChildIndex(param2);
                           if(!(_loc5_ && Boolean(this)))
                           {
                              addr0096:
                              this._foregroundContainer.removeChildAt(_loc3_);
                           }
                        }
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr0096);
               }
            }
            addr009f:
            return;
         }
         §§goto(addr0044);
      }
      
      private function isoToStage(param1:Number, param2:Number) : Point
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:Point = null;
         var _loc3_:FieldInfoLayerProxy = facade.retrieveProxy(FieldInfoLayerProxy.NAME) as FieldInfoLayerProxy;
         §§push(IsoMath);
         §§push(§§findproperty(Pt));
         §§push(param1);
         if(_loc7_)
         {
            §§push(§§pop() + 1);
         }
         §§push(param2);
         if(_loc7_)
         {
            §§push(§§pop() + 1);
         }
         var _loc4_:Pt = §§pop().isoToScreen(new §§pop().Pt(§§pop(),§§pop(),_loc3_.isoView.currentZoom));
         _loc5_ = this._foregroundContainer.localToGlobal(new Point(_loc4_.x,_loc4_.y));
         _loc5_.x = Math.round(_loc4_.x);
         if(_loc7_ || Boolean(param2))
         {
            _loc5_.y = Math.round(_loc4_.y);
         }
         return _loc5_;
      }
   }
}


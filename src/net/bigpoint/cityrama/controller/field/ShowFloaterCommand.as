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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         var _loc2_:FieldViewPortMediator = facade.retrieveMediator(FieldViewPortMediator.NAME) as FieldViewPortMediator;
         this._foregroundContainer = _loc2_.forgroundContainer;
         var _loc3_:Vector.<FloaterVo> = param1.getBody().info as Vector.<FloaterVo>;
         var _loc4_:IFloaterObjectVo = param1.getBody().obj as IFloaterObjectVo;
         var _loc5_:Sprite = param1.getBody().container as Sprite;
         var _loc6_:Number = param1.getBody().height as Number;
         this.prepareFloater(_loc3_,_loc4_,_loc5_,_loc6_);
      }
      
      private function prepareFloater(param1:Vector.<FloaterVo>, param2:IFloaterObjectVo, param3:Sprite, param4:Number) : void
      {
         var _loc5_:Number = (param2 as GameObjectVo).matrix3dCoordinates.x * this._playfieldProxy.tileSize;
         var _loc6_:Number = (param2 as GameObjectVo).matrix3dCoordinates.y * this._playfieldProxy.tileSize;
         var _temp_1:* = param3;
         param3.mouseEnabled = false;
         _temp_1.mouseChildren = false;
         var _temp_2:* = this._foregroundContainer;
         var _loc8_:Boolean;
         this._foregroundContainer.mouseEnabled = _loc8_ = false;
         _temp_2.mouseChildren = false;
         this._foregroundContainer.addChild(param3);
         var _loc7_:Point = this.isoToStage(_loc5_,_loc6_);
         param3.x = _loc7_.x;
         param3.y = _loc7_.y + param4;
         this.startFloater(param1,param3);
      }
      
      private function startFloater(param1:Vector.<FloaterVo>, param2:Sprite) : void
      {
         var _loc4_:FloaterVo = null;
         var _loc3_:Number = 0;
         for each(_loc4_ in param1)
         {
            TweenMax.delayedCall(_loc3_,this.showFloaterInformation,[_loc4_,param2]);
            _loc3_ += 0.5;
         }
      }
      
      private function showFloaterInformation(param1:FloaterVo, param2:Sprite) : void
      {
         var _loc3_:TextField = null;
         var _loc4_:StyleSheet = null;
         if(param1 != null && Boolean(param2))
         {
            _loc3_ = new TextField();
            _loc4_ = new StyleSheet();
            _loc4_.setStyle("block",{
               "leading":-7,
               "textAlign":"center"
            });
            _loc3_.styleSheet = _loc4_;
            _loc3_.multiline = true;
            _loc3_.autoSize = TextFieldAutoSize.CENTER;
            _loc3_.antiAliasType = AntiAliasType.ADVANCED;
            _loc3_.htmlText = "<block>" + param1.text + "</block>";
            _loc3_.width = _loc3_.textWidth + 20;
            _loc3_.height = _loc3_.textHeight + 5;
            _loc3_.x = -_loc3_.width / 2;
            TweenMax.to(_loc3_,0,{"glowFilter":{
               "color":param1.glowColor,
               "alpha":1,
               "blurX":2,
               "blurY":2,
               "strength":20
            }});
            param2.addChild(_loc3_);
            TweenMax.to(_loc3_,1.5,{"y":_loc3_.y - 80});
            TweenMax.to(_loc3_,0.7,{
               "delay":0.8,
               "autoAlpha":0,
               "onComplete":this.handleFloaterTweenComplete,
               "onCompleteParams":[_loc3_,param2]
            });
         }
      }
      
      private function handleFloaterTweenComplete(param1:TextField, param2:Sprite) : void
      {
         var _loc3_:Number = NaN;
         param2.removeChild(param1);
         if(param2.numChildren == 0)
         {
            if(this._foregroundContainer.contains(param2))
            {
               _loc3_ = this._foregroundContainer.getChildIndex(param2);
               this._foregroundContainer.removeChildAt(_loc3_);
            }
         }
      }
      
      private function isoToStage(param1:Number, param2:Number) : Point
      {
         var _loc5_:Point = null;
         var _loc3_:FieldInfoLayerProxy = facade.retrieveProxy(FieldInfoLayerProxy.NAME) as FieldInfoLayerProxy;
         var _loc4_:Pt = IsoMath.isoToScreen(new Pt(param1 + 1,param2 + 1,_loc3_.isoView.currentZoom));
         _loc5_ = this._foregroundContainer.localToGlobal(new Point(_loc4_.x,_loc4_.y));
         _loc5_.x = Math.round(_loc4_.x);
         _loc5_.y = Math.round(_loc4_.y);
         return _loc5_;
      }
   }
}


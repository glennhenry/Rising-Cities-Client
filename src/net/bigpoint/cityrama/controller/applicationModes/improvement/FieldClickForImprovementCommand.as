package net.bigpoint.cityrama.controller.applicationModes.improvement
{
   import com.greensock.TweenMax;
   import com.greensock.data.TweenMaxVars;
   import com.greensock.easing.Expo;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IImprovable;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.improvement.ImprovementCursorProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigImprovementDTO;
   import net.bigpoint.cityrama.view.cursor.AttachImprovementToCursorCommand;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class FieldClickForImprovementCommand extends SimpleCommand
   {
      
      private var _playfieldInteractiveProxy:PlayfieldInteractiveProxy;
      
      private var _improvementCursorProxy:ImprovementCursorProxy;
      
      public function FieldClickForImprovementCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:IImprovable = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:BillboardObject = null;
         var _loc6_:GameConfigProxy = null;
         var _loc7_:String = null;
         var _loc8_:TweenMaxVars = null;
         var _loc9_:Number = NaN;
         this._playfieldInteractiveProxy = PlayfieldInteractiveProxy(facade.retrieveProxy(PlayfieldInteractiveProxy.NAME));
         if(this._playfieldInteractiveProxy.clickObject != null && this._playfieldInteractiveProxy.clickObject as BillboardObject != null && (this._playfieldInteractiveProxy.clickObject as BillboardObject).billboardObjectVo is IImprovable && !(this._playfieldInteractiveProxy.clickObject as BillboardObject).billboardObjectVo.isUnderConstruction() && !(this._playfieldInteractiveProxy.clickObject as BillboardObject).billboardObjectVo.hasEmergency() && (this._playfieldInteractiveProxy.clickObject as BillboardObject).billboardObjectVo.isConnectedToStreet && !(this._playfieldInteractiveProxy.clickObject as BillboardObject).billboardObjectVo.isExpansionObject)
         {
            _loc2_ = (this._playfieldInteractiveProxy.clickObject as BillboardObject).billboardObjectVo as IImprovable;
            this._improvementCursorProxy = facade.retrieveProxy(ImprovementCursorProxy.NAME) as ImprovementCursorProxy;
            _loc3_ = this._improvementCursorProxy.currentSelectedImprovementCid;
            _loc4_ = (this._playfieldInteractiveProxy.clickObject as BillboardObject).billboardObjectVo.buildingDTO.id;
            if(_loc3_ != -1)
            {
               if(_loc2_.numFreeImprovementSlots > 0)
               {
                  _loc5_ = this._playfieldInteractiveProxy.clickObject as BillboardObject;
                  _loc6_ = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  _loc7_ = ConfigImprovementDTO(_loc6_.config.improvements[_loc3_]).quality;
                  _loc8_ = new TweenMaxVars();
                  _loc8_.glowFilter(20,20,AttachImprovementToCursorCommand.getColorByQuality(_loc7_),1);
                  _loc8_.ease(Expo.easeInOut);
                  _loc8_.repeat(1);
                  _loc8_.yoyo(true);
                  _loc5_.container.filters = [];
                  TweenMax.killTweensOf(_loc5_.container);
                  TweenMax.to(_loc5_.container,1,_loc8_);
                  _loc9_ = _loc2_.freeImprovementSlots[0].id;
                  sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_EQUIP_PLAYFIELDITEM_IMPROVEMENT,{
                     "bid":_loc4_,
                     "imp":_loc3_,
                     "slot":_loc9_
                  });
                  sendNotification(ApplicationNotificationConstants.DETACH_IMPROVEMENT_FROM_CURSOR);
                  (this._playfieldInteractiveProxy.clickObject as BillboardObject).invalidateIconStateManager();
               }
               else
               {
                  sendNotification(ApplicationNotificationConstants.OPEN_HIP_POPUP,_loc4_);
               }
            }
            else
            {
               sendNotification(ApplicationNotificationConstants.OPEN_HIP_POPUP,_loc4_);
            }
         }
      }
   }
}


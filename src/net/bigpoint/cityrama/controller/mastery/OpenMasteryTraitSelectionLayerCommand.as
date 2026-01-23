package net.bigpoint.cityrama.controller.mastery
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.mastery.MasteryBonusTraitGroupVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigMasteryBonusDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigMasteryBonusGroupDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.mastery.MasteryTraitSelectionMediator;
   import net.bigpoint.cityrama.view.mastery.components.MasteryTraitSelectionLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenMasteryTraitSelectionLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenMasteryTraitSelectionLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc5_:ConfigMasteryBonusGroupDTO = null;
         var _loc6_:PopupSettingsVo = null;
         var _loc7_:MasteryBonusTraitGroupVo = null;
         var _loc2_:Number = param1.getBody() as Number;
         var _loc3_:ConfigMasteryBonusDTO = (facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy).config.masteryBoni[_loc2_];
         if(_loc3_ == null)
         {
            return;
         }
         var _loc4_:Vector.<MasteryBonusTraitGroupVo> = new Vector.<MasteryBonusTraitGroupVo>();
         for each(_loc5_ in _loc3_.buffs)
         {
            if(_loc5_.selectionId != 0)
            {
               _loc7_ = new MasteryBonusTraitGroupVo();
               _loc7_.bonusCollection = ConfigFactory.getMasteryBonusVosFromConfigMasteryBonusGroupDTO(_loc5_,"","");
               _loc4_.push(_loc7_);
            }
         }
         _loc6_ = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         _loc6_.modal = true;
         _loc6_.viewClass = MasteryTraitSelectionLayer;
         _loc6_.mediatorClass = MasteryTraitSelectionMediator;
         _loc6_.mediatorName = MasteryTraitSelectionMediator.NAME;
         _loc6_.data = _loc4_;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc6_);
      }
   }
}


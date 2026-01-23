package net.bigpoint.cityrama.controller.popup
{
   import mx.core.IFlexDisplayObject;
   import mx.core.IVisualElement;
   import mx.core.UIComponent;
   import mx.managers.PopUpManager;
   import mx.managers.PopUpManagerChildList;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.popupContainer.PopupContainerMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class PopupExecuteCommand extends SimpleCommand
   {
      
      public function PopupExecuteCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PopupSettingsVo = PopupSettingsVo(param1.getBody());
         this.openPopup(_loc2_);
      }
      
      private function openPopup(param1:PopupSettingsVo) : void
      {
         var _loc7_:UIComponent = null;
         var _loc2_:PopupContainerMediator = facade.retrieveMediator(PopupContainerMediator.NAME) as PopupContainerMediator;
         var _loc3_:IFlexDisplayObject = PopUpManager.createPopUp(_loc2_.popupContainer,param1.viewClass,false,PopUpManagerChildList.PARENT);
         Object(_loc3_).setStyle("verticalCenter",0);
         Object(_loc3_).setStyle("horizontalCenter",0);
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.popupContainer.numElements)
         {
            _loc7_ = _loc2_.popupContainer.getElementAt(_loc4_) as UIComponent;
            _loc7_.mouseEnabled = false;
            _loc7_.mouseChildren = false;
            _loc4_++;
         }
         this.cleanUpTopLayer(_loc2_);
         if(param1.modal)
         {
            if(_loc2_.popupContainer.numElements > 0 || _loc2_.stackContainer.numElements > 0)
            {
               this.addToTopContainer(_loc3_ as IVisualElement,_loc2_,param1.type == PopupSettingsVo.STACK_POPUP);
            }
            else
            {
               _loc2_.modalCover.visible = true;
               if(param1.type != PopupSettingsVo.STACK_POPUP)
               {
                  _loc2_.popupContainer.addElement(_loc3_ as IVisualElement);
               }
               else
               {
                  _loc2_.stackContainer.addElement(_loc3_ as IVisualElement);
               }
            }
         }
         else if(param1.type != PopupSettingsVo.STACK_POPUP)
         {
            _loc2_.popupContainer.addElement(_loc3_ as IVisualElement);
         }
         else
         {
            _loc2_.stackContainer.addElement(_loc3_ as IVisualElement);
         }
         _loc2_.popupContainer.visible = true;
         _loc2_.stackContainer.visible = true;
         _loc2_.popupContainerTop.visible = true;
         _loc2_.stackContainerTop.visible = true;
         var _loc5_:Class = param1.mediatorClass;
         var _loc6_:Mediator = new _loc5_(param1.mediatorName,_loc3_);
         if(_loc6_ is IDataReceiverMediator)
         {
            IDataReceiverMediator(_loc6_).setData(param1.data);
         }
         facade.registerMediator(_loc6_);
         param1.creationComplete();
      }
      
      private function addToTopContainer(param1:IVisualElement, param2:PopupContainerMediator, param3:Boolean = false) : void
      {
         param2.modalCover.visible = false;
         if(!param3)
         {
            param2.popupContainerTop.addElement(param1);
         }
         else
         {
            param2.stackContainerTop.addElement(param1);
         }
         param2.modalCoverTop.visible = true;
      }
      
      private function cleanUpTopLayer(param1:PopupContainerMediator) : void
      {
         if(param1.popupContainerTop.numElements > 0)
         {
            param1.popupContainer.addElement(param1.popupContainerTop.getElementAt(0));
         }
         if(param1.stackContainerTop.numElements > 0)
         {
            param1.stackContainer.addElement(param1.stackContainerTop.getElementAt(0));
         }
      }
   }
}


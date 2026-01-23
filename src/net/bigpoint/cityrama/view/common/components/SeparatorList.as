package net.bigpoint.cityrama.view.common.components
{
   import mx.core.IVisualElement;
   import net.bigpoint.cityrama.view.common.interfaces.ISeparatorReceiver;
   import spark.components.List;
   
   public class SeparatorList extends List
   {
      
      private static var _skinParts:Object = {
         "dataGroup":false,
         "scroller":false,
         "dropIndicator":false
      };
      
      public function SeparatorList()
      {
         super();
      }
      
      override public function updateRenderer(param1:IVisualElement, param2:int, param3:Object) : void
      {
         super.updateRenderer(param1,param2,param3);
         if(param1 is ISeparatorReceiver)
         {
            (param1 as ISeparatorReceiver).showSeparator = this.showSeparatorInList(param2);
         }
      }
      
      private function showSeparatorInList(param1:int) : Boolean
      {
         if(dataProvider)
         {
            if(dataProvider.length > 1)
            {
               if(param1 == dataProvider.length - 1)
               {
                  return true;
               }
            }
         }
         return false;
      }
   }
}


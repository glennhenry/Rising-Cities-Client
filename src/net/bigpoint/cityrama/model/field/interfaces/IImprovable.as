package net.bigpoint.cityrama.model.field.interfaces
{
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemImprovementSlotDTO;
   
   public interface IImprovable
   {
      
      function get numFreeImprovementSlots() : int;
      
      function get currentImprovements() : Vector.<ImprovementVo>;
      
      function set currentImprovements(param1:Vector.<ImprovementVo>) : void;
      
      function get freeImprovementSlots() : Vector.<ConfigPlayfieldItemImprovementSlotDTO>;
      
      function get currentActiveImprovements() : Vector.<ImprovementVo>;
   }
}


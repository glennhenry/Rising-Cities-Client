package net.bigpoint.cityrama.view.departmentBook.ui.components
{
   import net.bigpoint.cityrama.view.schoolBook.CharacteristicsEntryVo;
   
   public interface IProfessionalCharacteristicsVo
   {
      
      function get operationsLeft() : uint;
      
      function get characteristicEntries() : Vector.<CharacteristicsEntryVo>;
   }
}

